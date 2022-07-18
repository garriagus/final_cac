<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Empleado</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

		<div class="container">
			<a class="navbar-brand" href="#">Inicio</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarText" aria-controls="navbarText"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="http://localhost:8080/trabajo_final/AreasController">Áreas
							<span class="sr-only"></span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="http://localhost:8080/trabajo_final/EmpleadosController">Empleados</a>
					</li>
			</div>
		</div>
	</nav>
	</nav>
	<div class="container">
		<h1 class="text-center">Añadir Empleado</h1>

		<div class="row">
			<form class="p-5" action="EmpleadosController?accion=insert"
				method="post">

				<div class="mb-3">
					<label for="nombre" class="form-label">Nombre</label> <input
						type="text" class="form-control" id="nombre" name="nombre"
						required="required">
				</div>

				<div class="mb-3">
					<label for="apellido" class="form-label">Apellido</label> <input
						type="text" class="form-control" id="apellido" name="apellido"
						required="required">
				</div>

				<div class="mb-3">
					<label for="dni" class="form-label">DNI:</label> <input
						type="number" class="form-control" id="dni" name="dni" min="1"
						 size="10" maxlength="9" required="required">
				</div>

				<div class="mb-3">
					<label for="mail" class="form-label">Mail:</label> <input
						type="email" class="form-control" id="mail" name="mail"
						required="required">
				</div>

				<div class="mb-3">
					<label for="id_area" class="form-label">Área</label> <input
						type="number" class="form-control" id="id_area" name="id_area"
						min="1" max="5" size="8" maxlength="9" required="required">
				</div>
				<br /> <br />

				<button type="submit" class="btn btn-primary">Insertar</button>



			</form>
		</div>


	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>