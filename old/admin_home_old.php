<!-----------------------------Sección Backend---------------------------------------------------->
<?php
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect him to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: index.php");
    exit;
}
?>
<!-----------------------------Fin Sección Backend---------------------------------------------------->


<!-----------------------------Sección Visual o frontend---------------------------------------------------->
<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <title>GIT - Grupo Integrador de Tecnología GIT puertas, citofonia,</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./css/style.css">
    <link rel="icon" type="image/png" href="img/logo2.png" width="200" height="100" />
    <script src="./js/xlsx.full.min.js"></script>
    <script src="./js/FileSaver.min.js"></script>
    <script src="./js/tableexport.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/es.min.js" integrity="sha512-L6Trpj0Q/FiqDMOD0FQ0dCzE0qYT2TFpxkIpXRSWlyPvaLNkGEMRuXoz6MC5PrtcbXtgDLAAI4VFtPvfYZXEtg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>

<body>
    <div class="page-header">
        <h5>Bienvenido, <?php echo htmlspecialchars($_SESSION["username"]); ?></b>!</h5>
    </div>
    <p>
        <a href="reset-password.php" class="btn btn-secondary">Cambiar contraseña</a>
        <a href="logout.php" class="btn btn-primary">Cerrar sesión</a>
    </p>

    <div class="w3-container">
        <div class="principal">
            <p></p>
            <p>
            </p>
            <div>
                <img src="./img/logo3.png" width="200" height="100">
                <img src="./img/provenzal.png" width="200" height="100">
            </div>
            <p>
            <h2 style="color: fff;">Parqueo vehiculos visitantes</h2>
            <!-- <p class="bg-light rounded">Cuando el cliente ya tenga pagado, no revisarle la placa, solo si su ultimo valor es 0. <br>
                    Revisar que la placa no este todavia sin confirmar pago. <br>
                    Comprobar en el mismo caso pero antes de la placa, y dejar que el guardia confirme si continuar<br>
                    •	Que no puedan hacer carrusel (Alarma indicando que el vehiculo ya ingresó el mismo día)
                    </p> -->
        </div>
    </div>
    </header>
    <br><br>
    <form method="post" id="form-parqueo" autocomplete="off">
        <div class="center">
            <h4 style="color: #bababa;">Registro vehículos</h4>
        </div class="center">
        <br>
        <div class="form-row mx-auto">
            <div class="col">
                <input class="form-control" name="visitante" type="text" placeholder="Visitante">
            </div>
            <select class="form-select" name="tipo" required aria-label="Default select example">
                <option value="">Tipo vehiculo</option>
                <option value="Carro">Carro</option>
                <option value="Motocicleta">Motocicleta</option>
                <option value="Camioneta">Otros</option>
            </select>

            <div class="col">
                <input class="form-control" name="color_v" type="text" placeholder="Observaciones">
            </div>
            <div class="col">
                <input class="form-control" name="placa" type="text" placeholder="Placa" id="placa" onKeyUp="document.getElementById(this.id).value=document.getElementById(this.id).value.toUpperCase()">
            </div>
            <select class="form-select" name="torre" required aria-label="Default select example">
                <option value="">Torre</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
            </select>
            <div></div>
            <select class="form-select" name="apartamento" required aria-label="Default select example">
                <option value="">Apartamento</option>
                <option value="101">101</option>
                <option value="102">102</option>
                <option value="103">103</option>
                <option value="104">104</option>
                <option value="201">201</option>
                <option value="202">202</option>
                <option value="203">203</option>
                <option value="204">204</option>
                <option value="301">301</option>
                <option value="302">302</option>
                <option value="303">303</option>
                <option value="304">304</option>
                <option value="401">401</option>
                <option value="402">402</option>
                <option value="403">403</option>
                <option value="404">404</option>
                <option value="501">501</option>
                <option value="502">502</option>
                <option value="503">503</option>
                <option value="504">504</option>
                <option value="601">601</option>
                <option value="602">602</option>
                <option value="603">603</option>
                <option value="604">604</option>
                <option value="701">701</option>
                <option value="702">702</option>
                <option value="703">703</option>
                <option value="704">704</option>
                <option value="801">801</option>
                <option value="802">802</option>
                <option value="803">803</option>
                <option value="804">804</option>
                <option value="901">901</option>
                <option value="902">902</option>
                <option value="903">903</option>
                <option value="904">904</option>
                <option value="1001">1001</option>
                <option value="1002">1002</option>
                <option value="1003">1003</option>
                <option value="1004">1004</option>
                <option value="1101">1101</option>
                <option value="1102">1102</option>
                <option value="1103">1103</option>
                <option value="1104">1104</option>
                <option value="1201">1201</option>
                <option value="1202">1202</option>
                <option value="1203">1203</option>
                <option value="1204">1204</option>
            </select>
            <div class="col">
                <input class="form-control" name="residente" type="text" placeholder="Persona que autoriza">
            </div>
            <select class="form-select" name="numparqueo" required aria-label="Default select example" onchange="chequearParqueo(this.value)">
                <option value="">Parqueadero</option>
                <option value="1A">1A</option>
                <option value="1B">1B</option>
                <option value="1C">1C</option>
                <option value="1D">1D</option>
                <option value="1E">1E</option>
                <option value="2A">2A</option>
                <option value="2B">2B</option>
                <option value="2C">2C</option>
                <option value="2D">2D</option>
                <option value="2E">2E</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
            </select>
        </div>
        </div>
        <div class="col">
            <input class="form-control" name="fechaentrada" type="hidden" placeholder="Fecha ingreso" for="disabled">
        </div>
        <br>
        <div class="w-33">
            <div class="mx-auto">
                </o>
                <div class="center"><input type="submit" name="submit" class="btn btn-primary" disabled value="Registrar" id="btn-submit"></div>
            </div>
            <div class="alert alert-danger mt-3 mx-3 d-none" role="alert" id="alerta">
                Alerta
            </div>
        </div>
    </form>
    <br>
    <div class="reporte_old">
        <button id="btnExportar" class="btn btn-primary" hidden>.</button>
    </div>
    <center class="no-mostrar-print">
        <h4>
            <font color="#bababa">Visualizar reporte parqueo
        </h4>
        </font>
    </center>
    <br>
    </div>
    <div class="no-mostrar-print my-3">
        <div class="row">
            <div class='col-sm-6'>
                <form class="form-inline" autocomplete="off">
                    <input class="form-control mr-3" type="date" id="txt-inicio" step="1">
                    <input class="form-control" type="datetime-local" id="txt-final" step="1">
                    <p>
                    <div class="reporte mb-2">
                        <button type="button" onclick="ExportToExcel('xlsx')" class="btn btn-primary">Generar reporte parqueo</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <table border="1" id="parkingTable">
        <center class="no-mostrar-print">
            <h4>
                <font color="#bababa">Ingreso y salida de vehiculos
            </h4>
            </font>
        </center>
        <br>
        <thead>
            <tr class="text-align:center">
                <th width="10%"><strong>Visitante</strong></th>
                <th width="10%"><strong>Tipo<p>vehiculo</strong></th>
                <th width="10%"><strong>Observaciones</strong></th>
                <th width="10%"><strong>Placa</strong></th>
                <th width="5%"><strong>Torre</strong></th>
                <th width="7%"><strong>Apto</strong></th>
                <th width="15%"><strong>Persona<p>que autoriza</p></strong></th>
                <th width="10%"><strong>Parqueadero</strong></th>
                <th width="10%"><strong>Hora Entrada</strong></th>
                <th width="18%"><strong>Marcar salida</strong></th>
                <th width="0%" id="valor-th" style="display: none;"><strong>Valor</strong></th>
            </tr>
        </thead>
        <tbody id="tabla-parqueo">
        </tbody>
    </table>
    </div>
    <div class="modal" id="confirmarModal" tabindex="-1" aria-labelledby="confirmarModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" id="info-fila">
            </div>
        </div>
    </div>
    <div class="modal" id="ticketModal" tabindex="-1" aria-labelledby="ticketModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" id="ticket-fila">
            </div>
        </div>
    </div>
    <footer class="no-mostrar-print">
        <div id="pie">Copyright © 2022. GIT - Grupo Integrador de Tecnología</div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/es.min.js" integrity="sha512-L6Trpj0Q/FiqDMOD0FQ0dCzE0qYT2TFpxkIpXRSWlyPvaLNkGEMRuXoz6MC5PrtcbXtgDLAAI4VFtPvfYZXEtg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script src="./js/script.js"></script>

</body>

</html>
<!-----------------------------Fin Sección Visual o frontend---------------------------------------------------->