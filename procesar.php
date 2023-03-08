<?php
require 'vendor/autoload.php';

use Carbon\Carbon;

Carbon::setLocale('es');


function db_query($query)
{
    $connection = mysqli_connect("localhost", "root", "", "parqueo");
    $result = mysqli_query($connection, $query);

    return $result;
}
function select_id($tblname, $field_name, $field_id)
{
    $sql = "Select * from " . $tblname . " where " . $field_name . " = " . $field_id . "";
    $db = db_query($sql);
    $GLOBALS['row'] = mysqli_fetch_object($db);

    return $sql;
}
function insertar($tblname, $form_data)
{
    $fields = array_keys($form_data);
    $sql = "INSERT INTO " . $tblname . "(" . implode(',', $fields) . ")  VALUES('" . implode("','", $form_data) . "')";

    return db_query($sql);
}
switch ($_POST["accion"]) { //Visualizar datos ingresados
    case '1':
        $sql = "select * from tabla_parqueo";

        if ($_POST["todos"]) {
            if ($_POST["usa_rango"]) {
                $sql .= " where fechaentrada BETWEEN '" . $_POST["inicio"] . "' AND '" . $_POST["final"] . "' ORDER BY id DESC";
            } else {
                $sql .= " where fechaentrada > '" . Carbon::now('America/Bogota')->startOfDay() . "' or valor is null or fechasalida > '" . Carbon::now('America/Bogota')->startOfDay() . "' ORDER BY id DESC";
            }
        } else {
            $sql .= " where valor is null ORDER BY id DESC";
        }

        $resultado = db_query($sql);
        while ($row = mysqli_fetch_object($resultado)) {
?>
            <tr>
                <td><?php echo $row->visitante; ?></td>
                <td><?php echo $row->tipo; ?></td>
                <td><?php echo $row->color_v; ?></td>
                <td><?php echo $row->placa; ?></td>
                <td><?php echo $row->torre; ?></td>
                <td><?php echo $row->apartamento; ?></td>
                <td><?php echo $row->residente; ?></td>
                <td class="parqueadero"><?php echo $row->numparqueo; ?></td>
                <td><?php echo Carbon::parse($row->fechaentrada)->isoFormat('dddd L hh:mm A '); ?>
                    <p>
                        <abbr title="IMPRIMIR TICKET DE PARQUEO">
                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#ticketModal" onclick="verTicket(<?php echo "{$row->id}"; ?>)">
                                <i class="fa-solid fa-ticket"></i>
                            </button></abbr>
                        <abbr title="CONSULTAR TIEMPO DE PARQUEO Y VALOR ESTIMADO">
                            <button class="btn btn-warning" data-toggle="modal" data-target="#VerModal" onclick="verConsulta(<?php echo "{$row->id},'{$row->fechaentrada}'"; ?>)">
                                <i class="fa-solid fa-hourglass-half"></i>
                            </button></abbr>
                </td>

                <!------------------------Segundo boton y modal>---------------------------->
                <td>
                    <?php
                    if ($_POST["todos"] && isset($row->fechasalida) && isset($row->valor)) {
                        echo Carbon::parse($row->fechasalida)->isoFormat('L hh:mm A');
                    } else {
                    ?>
                        <abbr title="FACTURAR PARQUEO">
                            <button class="btn btn-warning" data-toggle="modal" data-target="#confirmarModal" onclick="verFila(<?php echo "{$row->id},'{$row->fechaentrada}'"; ?>)">
                                <i class="fa-solid fa-dollar"></i>
                            </button></abbr>
                    <!--    <abbr title="EDITAR REGISTRO">
                            <a class="btn btn-warning" href="editar.php?id=<?php echo $row->id; ?>">
                                <i class="fa fa-pencil fa-lg" aria-hidden="true"></i></a>
                            </button></abbr>-->
                </td>
            <?php
                    }
            ?>
            </td>
            <?php
            if ($_POST["todos"] && isset($row->valor)) {
            ?>
                <td><em><?php echo "$" . $row->valor; ?></em></td>
            <?php
            }
            ?>
            </tr>
        <?php
        }
        break;
    case '2':

        if ($_POST["ignorar"] == 'no') {
            $sql = "select placa, valor, id from tabla_parqueo where fechaentrada > '" . Carbon::now('America/Bogota')->startOfDay() . "' and placa = UPPER('" . $_POST["placa"] . "') and valor IS NULL order by id DESC";

            $resultado = db_query($sql);

            if ($resultado->num_rows > 0) {
                $row = mysqli_fetch_object($resultado);
                echo json_encode(
                    array(
                        'placa' => $row,
                        'estado_placa' => 'repetida',
                        'sql' => $sql,
                    )
                );
                break;
            }
        }

        $sql = sprintf(
            "INSERT INTO tabla_parqueo (visitante,tipo,color_v,placa,torre,apartamento,residente,numparqueo,fechaentrada) 
            VALUES('%s','%s','%s', UPPER('%s'),'%s','%s','%s','%s','%s')",
            $_POST["visitante"],
            $_POST["tipo"],
            $_POST["color_v"],
            $_POST["placa"],
            $_POST["torre"],
            $_POST["apartamento"],
            $_POST["residente"],
            $_POST["numparqueo"],
            Carbon::now('America/Bogota')
        );

        $resultado = db_query($sql);

        $inicio = Carbon::now('America/Bogota');

        // $final = Carbon::now('America/Bogota')->addHours(1)->addMinutes(61);
        $final = Carbon::now('America/Bogota')->addDays(1)->addHours(2)->addMinutes(60);

        $info = "Actual: " . $inicio . " Salida: " . $final . " Horas: " . $final->diffForHumans($inicio, ['parts' => 4]);

        $horas = $inicio->diffInHours($final);
        $pagar = 0;

        if ($horas > 0) {
            $pagar = $horas * 1000;
            // $pagar = round($original, -3);
        }

        $sql = "select placa, valor, id from tabla_parqueo where fechaentrada > '" . Carbon::now('America/Bogota')->startOfDay() . "' and placa = UPPER('" . $_POST["placa"] . "') and valor IS NOT NULL order by fechasalida DESC";

        $resultado = db_query($sql);

        $row = mysqli_fetch_object($resultado);

        echo json_encode(
            array(
                'placa' => $row,
                'sql' => $sql,
                'prueba' => $info . " Pagar: " . $pagar,
                'ignorar' => $_POST["ignorar"]
            )
        );

        break;

    case '3':
        $sql = "select * from tabla_parqueo where id = " . $_POST["id"];
        $resultado = db_query($sql);
        $row = mysqli_fetch_object($resultado);

        $jineteo = false;

        $inicio = Carbon::parse($_POST['fechaentrada']);

        //$final = Carbon::now()->addHour(5)->addMinute(rand(1,100));
        $final = Carbon::now('America/Bogota');
        //$final = Carbon::parse($_POST['fechaentrada'])->addHours(2)->addMinutes(61);

        $minutos = $inicio->diffInMinutes($final);

        $sqlPlaca = "select * from tabla_parqueo where fechaentrada > '" . Carbon::now('America/Bogota')->startOfDay() . "' and placa = UPPER('" . $row->placa . "') and valor IS NOT NULL order by fechasalida DESC";
        $resultadoPlaca = db_query($sqlPlaca);
        while ($rowPlaca = mysqli_fetch_object($resultadoPlaca)) {
            if ($rowPlaca->valor != 0) {
                break;
            }
            $jineteo = true;
            $inicioPlaca = Carbon::parse($rowPlaca->fechaentrada);
            $finalPlaca = Carbon::parse($rowPlaca->fechasalida);
            $minutos = $minutos + $inicioPlaca->diffInMinutes($finalPlaca);
        }

        $pagar = 0;

        if ($minutos > 60) {
            if (($minutos / 60) == 1) {
                $pagar = 1000;
            } else {
                if (($minutos % 60) == 0) {
                    $pagar = (($minutos / 60) - 1) * 1000;
                } else {
                    $pagar = (intval($minutos / 60)) * 1000;
                }
            }
        }

        ?>

        <!----Segundo modal------>
        <div class="modal-header">
            <!--Modal para visualizar el recibo de parqueo y marcar la salida del vehículo-->

            <h6 class="modal-title" id="confirmarModalLabel"><strong>Recibo de pago parqueo</strong></h6>
            <img src="assets/img/logo.png" width="200" height="100">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body" id="recibo">
            <?php //Cuerpo del contenido modal
            echo "<b>Visitante</b>: " . $row->visitante .
                "<br><b>Placa</b>: " . $row->placa .
                "<br><b>Entrada</b>: " . $inicio . " 
                  <br><b>Salida</b>: " . $final . "
                  <br><b>Tiempo</b>: " . $final->diffForHumans($inicio, ['parts' => 4]);
            if ($jineteo) {
                echo "<br>*" . $minutos . " minutos acumulados hoy." .
                    "<br>*Se acumula el tiempo desde la primera hora o fracción gratuita.";
            }
            // echo "<br>Valor: " . "$" . floor($pagar/50)*50 + (($pagar%50>25) ? 50 : 0);
            echo "<br><b>Valor</b>: " . "$" . $pagar;
            //echo "<br>Original: " . $original;

            ?>
            <br>
            <div style="text-align: justify;">
                <small>
                    <center>Gracias por tu visita</center>
                </small>
                <div>
                </div>
                <div class="modal-footer">
                    <?php
                    if (true) { ?>
                        <button type="button" class="btn btn-warning" onclick="guardarPago(<?php echo "{$_POST['id']},'{$final}','{$pagar}'"; ?>)">Guardar Cobro</button>
                    <?php }
                    ?>
                    <button type="button" class="btn btn-info" onclick="window.print()">Imprimir</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </tr>
                    <!-- btn -->
                </div>
            <?php

            break;
        case '4':
            $sql = sprintf(
                "UPDATE tabla_parqueo SET fechasalida= '%s', valor=%s where id ='%s'",
                $_POST["fechasalida"],
                $_POST["valor"],
                $_POST["id"],
            );

            $resultado = db_query($sql);
            echo $resultado;

            break;

        case '5':
            $sql = "SELECT numparqueo FROM tabla_parqueo WHERE valor is null and numparqueo = '" . $_POST["parqueo"] . "'";
            if ($resultado = db_query($sql)) {
                if ($resultado->num_rows > 0) {
                    echo json_encode(
                        array(
                            'resultado' => 'ocupado',
                            'mensaje' => 'Parqueadero ' . $_POST["parqueo"] . ' ocupado'
                        )
                    );
                } else {
                    echo json_encode(
                        array(
                            'resultado' => 'libre',
                            'mensaje' => 'Parqueadero ' . $_POST["parqueo"] . ' libre'
                        )
                    );
                }
            } else {
                echo json_encode(
                    array(
                        'resultado' => 'error',
                        'mensaje' => 'Error en consulta'
                    )
                );
            };
            break;
        case '6':

            $sql = "select * from tabla_parqueo where id = " . $_POST["id"];
            $resultado = db_query($sql);
            $row = mysqli_fetch_object($resultado)
            ?>

                <!----Segundo modal------>
                <div class="modal-header">
                    <!--Modal para visualizar el recibo de parqueo y marcar la salida del vehículo-->

                    <h6 class="modal-title" id="ticketModalLabel"><strong>Ticket de parqueo</strong></h6>
                    <img src="assets/img/logo.png" width="200" height="100">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body d-block mx-auto" id="body-ticket">
                    <div style="display: inline-block;">
                        <?php //Cuerpo del contenido modal
                        echo "<b>Entrada</b>:  " . $row->fechaentrada . "
                <br><b>Visitante</b>: " . $row->visitante . "
                <br><b>Tipo Vehículo</b>:  " . $row->tipo;
                        echo "<br><b>Observaciones</b>:  " . $row->color_v . "
                <br><b>Placa</b>: " . $row->placa . "
                <br><b>Torre</b>: " . $row->torre . "
                <br><b>Apto</b>:  " . $row->apartamento;
                        //echo "<br>Original: " . $original;

                        ?>
                    </div>
                    <br>
                    <div style="text-align: justify;">
                        <small>Favor conservar su Ticket para la salida del vehículo, portería se lo exigirá para facturación.</small>
                        <div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-info" onclick="window.print()">Imprimir</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            </tr>
                            <!-- btn -->
                        </div>
                    <?php
                    break;
                case '7':
                    //UPDATE tabla_parqueo SET fechasalida= '%s', valor=%s where id ='%s'
                    $sql = "UPDATE tabla_parqueo SET fechasalida = '" . Carbon::now('America/Bogota') . "', valor = '-1' WHERE id = " .  $_POST["id"];
                    $resultado = db_query($sql);
                    echo $resultado;
                    break;
                case '8':
                    $sql = "select * from tabla_parqueo where id = " . $_POST["id"];
                    $resultado = db_query($sql);
                    $row = mysqli_fetch_object($resultado);

                    $jineteo = false;

                    $inicio = Carbon::parse($_POST['fechaentrada']);

                    //$final = Carbon::now()->addHour(5)->addMinute(rand(1,100));
                    $final = Carbon::now('America/Bogota');
                    //$final = Carbon::parse($_POST['fechaentrada'])->addHours(2)->addMinutes(61);

                    $minutos = $inicio->diffInMinutes($final);

                    $sqlPlaca = "select * from tabla_parqueo where fechaentrada > '" . Carbon::now('America/Bogota')->startOfDay() . "' and placa = UPPER('" . $row->placa . "') and valor IS NOT NULL order by fechasalida DESC";
                    $resultadoPlaca = db_query($sqlPlaca);
                    while ($rowPlaca = mysqli_fetch_object($resultadoPlaca)) {
                        if ($rowPlaca->valor != 0) {
                            break;
                        }
                        $jineteo = true;
                        $inicioPlaca = Carbon::parse($rowPlaca->fechaentrada);
                        $finalPlaca = Carbon::parse($rowPlaca->fechasalida);
                        $minutos = $minutos + $inicioPlaca->diffInMinutes($finalPlaca);
                    }

                    $pagar = 0;

                    if ($minutos > 60) {
                        if (($minutos / 60) == 1) {
                            $pagar = 1000;
                        } else {
                            if (($minutos % 60) == 0) {
                                $pagar = (($minutos / 60) - 1) * 1000;
                            } else {
                                $pagar = (intval($minutos / 60)) * 1000;
                            }
                        }
                    }

                    ?>

                        <!----Tercer modal------>
                        <div class="modal-header">
                            <!--Modal para visualizar la consulta de parqueo-->

                            <h6 class="modal-title" id="VerModalLabel"><strong>Consulta de parqueo</strong></h6>
                            <img src="assets/img/logo.png" width="200" height="100">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body" id="consulta">
                            <?php //Cuerpo del contenido modal
                            echo "<b>Visitante</b>: " . $row->visitante .
                                "<br><b>Placa</b>: " . $row->placa .
                                "<br><b>Ingreso</b>: " . $inicio .
                                "<br><b>Torre</b>: " . $row->torre .
                                "<br><b>Apartamento</b>: " . $row->apartamento .
                                "<br><b>Tiempo transcurrido</b>: " . $final->diffForHumans($inicio, ['parts' => 4]);
                            if ($jineteo) {
                                echo "<br>*" . $minutos . " minutos acumulados hoy." .
                                    "<br>*Se acumula el tiempo desde la primera hora o fracción gratuita.";
                            }
                            // echo "<br>Valor: " . "$" . floor($pagar/50)*50 + (($pagar%50>25) ? 50 : 0);
                            echo "<br><b>Valor estimado</b>: " . "$" . $pagar;
                            //echo "<br>Original: " . $original;

                            ?>
                            <br>
                            <div style="text-align: justify;">
                                <p>
                                    <small>
                                        <center>Sólo para consulta. No válida para facturar</center>
                                    </small>
                                <div>
                                </div>


                        <?php

                        break;
                    default:
                        break;
                }
