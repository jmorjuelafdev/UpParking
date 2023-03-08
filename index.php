<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Up Parking - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link rel="icon" type="image/png" href="img/logo2.png" width="200" height="100" />
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Moment JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/es.min.js" integrity="sha512-L6Trpj0Q/FiqDMOD0FQ0dCzE0qYT2TFpxkIpXRSWlyPvaLNkGEMRuXoz6MC5PrtcbXtgDLAAI4VFtPvfYZXEtg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>

<body>
    <a href="https://wa.me/573162248270?" class="whatsapp" target="_blank"> <i class="fa fa-whatsapp whatsapp-icon"></i>
        <h6>Contáctenos</h6>
    </a>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center justify-content-lg-between">

            <h1 class="logo me-auto me-lg-0"><a href="index.html">Up Parking<span>.</span></a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav id="navbar" class="navbar order-last order-lg-0">
                <ul>
                    <li><a class="nav-link scrollto active" href="#ingreso">Inicio</a></li>
                    <li><a class="nav-link scrollto" href="#reporte">Generar reporte </a></li>
                    <li><a class="nav-link scrollto" href="#registro">Ver registro</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->
        </div>
    </header><!-- End Header -->

    <main id="main">


        <!-- ======= Ingreso Section ======= -->
        <section id="ingreso" class="ingreso">
            <br><br><br><br><br><br>
            <div class="container" data-aos="zoom-in">
                <div class="container" data-aos="fade-up">
                    <form method="post" id="form-parqueo" autocomplete="off" class="row g-3">
                        <div class="text-center">
                            <h3>Registro de vehículos</h3>
                        </div>
                        <br>
                        <div class="col-md-4"><!--Formulario ingreso-->
                            <input class="form-control" name="visitante" type="text" placeholder="Visitante" required>
                        </div>
                        <div class="col-md-2"><!--Select tipo vehiculo-->
                            <select class="form-select" name="tipo" required aria-label="Default select example" required>
                                <option value="">Tipo vehiculo</option>
                                <option value="Carro">Carro</option>
                                <option value="Motocicleta">Motocicleta</option>
                                <option value="Camioneta">Otros</option>
                            </select>
                        </div>
                        <div class="col-md-4"><!--Campo observaciones-->
                            <input class="form-control" name="color_v" type="text" placeholder="Observaciones">
                        </div>
                        <div class="col-md-2"><!--Campo placa-->
                            <input class="form-control" name="placa" type="text" placeholder="Placa" id="placa" onKeyUp="document.getElementById(this.id).value=document.getElementById(this.id).value.toUpperCase()">
                        </div>
                        <div class="col-md-2"><!--Select torre-->
                            <select class="form-select" name="torre" required aria-label="Default select example">
                                <option value="">Torre</option>
                                <option value="Administración">Administración</option>
                                <option value="Salón social">Salón social</option>
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
                        </div>
                        <div class="col-md-2"><!--Select apartamento-->
                            <select class="form-select" name="apartamento" required aria-label="Default select example">
                                <option value="">Apartamento</option>
                                <option value="Administración">Administración</option>
                                <option value="Salón social">Salón social</option>
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
                        </div>
                        <div class="col-md-4"><!--Campo persona que autoriza-->
                            <input class="form-control" name="residente" type="text" placeholder="Persona que autoriza">
                        </div>
                        <div class="col-md-2"><!--Campo persona que autoriza-->
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
                </form>
                <div class="col">
                    <input class="form-control" name="fechaentrada" type="hidden" placeholder="Fecha ingreso" for="disabled">
                </div>
                <br>
                <div class="w-33">
                    <div class="text-center">
                        <input type="submit" name="submit" class="btn btn-warning" disabled value="Registrar" id="btn-submit">
                    </div>
                    <div class="alert alert-danger mt-3 mx-3 d-none" role="alert" id="alerta"></div>
                </div>
                </form>
                <!--Fin Formulario ingreso--->
                <br><br><br><br><br><br><br><br>
        </section><!-- End Ingreso Section -->



        <!-- ======= Reporte Section ======= -->
        <section id="reporte" class="reporte">
        <br><br><br><br>
            <div class="container" data-aos="zoom-in">
                <div class="text-center">
                    <div class="reporte_old">
                        <button id="btnExportar" class="btn btn-primary" hidden>.</button>
                    </div>
                    <div class="no-mostrar-print">
                        <div class="text-center">
                            <h3>Reporte parqueo</h3>
                        </div>
                        <br>
                    </div>
                    <div class="no-mostrar-print my-3">
                        <div class="row g-3">
                            <div class="col">
                                <input class="form-control mr-3" type="date" id="txt-inicio" step="1">
                            </div>
                            <div class="col">
                                <input class="form-control" type="datetime-local" id="txt-final" step="1">
                            </div>
                            <div class="col">
                                <button type="button" onclick="ExportToExcel()" class="btn btn-warning">Generar reporte parqueo</button>
                            </div>
                        </div>

                    </div>
                </div>
                <br><br><br><br>
                <br><br><br><br>
        </section><!-- End reporte Section -->


        <!-- ======= Registro Section ======= -->
        <section id="registro" class="registro">
            <br><br><br><br><br><br>
            <div class="container" data-aos="fade-up">
                <div style="overflow-x:auto;">
                    <table id="parkingTable">
                        <div class="no-mostrar-print">
                            <div class="text-center">
                                <h3 class="txtregistro">Ingreso y salida de vehículos</h3>
                            </div>
                        </div>
                        <br>
                        <thead>
                            <tr class="text-align:center">
                                <th>Visitante</th>
                                <th>Tipo vehiculo</th>
                                <th>Observaciones</th>
                                <th>Placa </th>
                                <th>Torre </th>
                                <th>Apto. </th>
                                <th>Persona que autoriza</th>
                                <th># Parqueo</th>
                                <th>Ingreso</th>
                                <th>Salida</th>
                                <th id="valor-th" style="display: none;">Valor</th>
                            </tr>
                        </thead>
                        <tr>
                            <tbody id="tabla-parqueo"><!--visualización de registros ingresados--->
                            </tbody>
                        </tr>
                    </table>
                </div>
            </div>

            <!----Impresión de modals--->
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
            <div class="modal" id="VerModal" tabindex="-1" aria-labelledby="VerModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content" id="info-consulta">
                    </div>
                </div>
            </div>
        </section><!-- End registro Section -->
    </main><!-- End #main -->

    <footer class="no-mostrar-print">
        <div class="text-center">
            <div class="copyright">
                <div id="pie">Copyright &copy; <?php print date('Y', time()); ?>. <strong><span>Up Parking</span></strong>. Todos los derechos reservados.<p>Desarrollado por <strong><a href="https://jmorjuelafdev@gmail.com//">jmorjuelafdev</a></strong> .</div>
            </div>
        </div>
    </footer>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/script.js"></script>
    <script src="assets/js/xlsx.full.min.js"></script>
    <script src="assets/js/FileSaver.min.js"></script>
    <script src="assets/js/tableexport.min.js"></script>
    <script src="assets/js/main.js"></script>

</body>

</html>