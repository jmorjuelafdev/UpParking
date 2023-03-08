<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<title>Provenzal</title>
	<link type="text/css" href="bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="./css/style.css">
	<link rel="icon" type="image/png" href="Images/logo2.png" />
	<script src="./js/xlsx.full.min.js"></script>
	<script src="./js/FileSaver.min.js"></script>
	<script src="./js/tableexport.min.js"></script>
</head>

<body>
	<div class="main-wrapper">
		<?php
		include("function.php");
		if (isset($_POST['submit'])) {
			$campos = array(
				"visitante" => $_POST['visitante'],
				"marca" => $_POST['marca'],
				"placa" => $_POST['placa'],
				"torre" => $_POST['torre'],
				"apartamento" => $_POST['apartamento'],
				"persona" => $_POST['persona'],
				"fechaentrada" => $_POST['fechaentrada'],
			);
			$tabla = "tabla_parqueo"; //Tabla en base de datos
			insertar($tabla, $campos);
		}
		?>
		<header class="shadow">
			<!--En el encabezado se coloca el nombre del conjunto residencial-->
			<div class="center">
				<img src="./Images/logo3.png" alt="" id="header-logo">
				<div id="header-msg" class="ml-5 align-self-center">
					<div class="center">
						<p>
						<h1>Provenzal</h1>
						</p>
					</div>
				</div>
		</header>
		<br><br>
		<form action="" method="post">
			<div class="col-xs-2">
				<input class="form-control" name="visitante" type="text" placeholder="VISITANTE">
			</div>

			<div class="col-xs-2">
				<input class="form-control" name="marca" type="text" placeholder="MARCA VEHICULO">
			</div>
			<div class="col-xs-2">
				<input class="form-control" name="placa" type="text" placeholder="PLACA">
			</div>
			<div class="col-xs-2">
				<input class="form-control" name="torre" type="text" placeholder="TORRE">
			</div>
			<div class="col-xs-2">
				<input class="form-control" name="apartamento" type="text" placeholder="APARTAMENTO">
			</div>
			<div class="col-xs-2">
				<input class="form-control" name="persona" type="text" placeholder="PERSONA QUE RECIBE">
			</div>
			<div class="col-xs-2">
				<input class="form-control" name="fechaentrada" type="text" placeholder="FECHA INGRESO" for="disabled">
			</div>
			<br>
			<br>
			<br>
			<br><br>
			<div class="w-33">
				<div class="center">
					<input type="submit" name="submit" class="btn btn-primary">
				</div>
			</div>
		</form>
		<br>
		<br>
		<table border="1" id="parkingTable">
			<tr>
				<th width="15%"><strong>VISITANTE</strong></th>
				<th width="10%"><strong>MARCA<p>VEHICULO</strong></th>
				<th width="10%"><strong>PLACA</strong></th>
				<th width="10%"><strong>TORRE</strong></th>
				<th width="10%"><strong>APTO</strong></th>
				<th width="15%"><strong>PERSONA QUE<p>RECIBE</strong></th>
				<th width="20%"><strong>FECHA<p>INGRESO</strong></th>
				<th width="35%"><strong>VALOR</strong>
				</th>
			</tr>
			<div class="reporte">
				<button id="btnExportar" class="btn btn-primary">GENERAR REPORTE DE HOY</button>
			</div>
			<?php
			$sql = "select * from tabla_parqueo";
			$resultado = db_query($sql);
			while ($row = mysqli_fetch_object($resultado)) {
			?>
				<tr>
					<td><?php echo $row->visitante; ?></td>
					<td><?php echo $row->marca; ?></td>
					<td><?php echo $row->placa; ?></td>
					<td><?php echo $row->torre; ?></td>
					<td><?php echo $row->apartamento; ?></td>
					<td><?php echo $row->persona; ?></td>
					<td>
						<?php
						$sql = "select now();";
						echo $row->fechaentrada; ?></td>
					<td><?php echo $row->valor; ?></td>
				</tr>
			<?php } ?>
		</table>
	</div>
	<script src="./js/script.js"></script>
</body>

</html>