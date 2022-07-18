<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nueva Área</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>


			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

		<div class="container">
			<a class="navbar-brand" href="http://localhost:8080/trabajo_final/EmpleadosController">Inicio</a>
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
	
	
		<h1 class="text-center" >Añadir Área</h1>

		<div class="row" >
			<form class="p-5" action="AreasController?accion=insert" method="post">
			
			<div class="mb-3">
				<label for="nombre" class="form-label" >Nombre</label>
				<input type="text" class="form-control" id="nombre" name="nombre" required="required" >
			</div>

			<div class="mb-3">
				<label for="telefono" class="form-label" >Teléfono:</label>
				<input type="number" class="form-control" id="telefono" name="telefono" size="10" maxlength="9" required="required" >
			</div>
			
			<div class="mb-3">
				<label for="mail" class="form-label" >Mail:</label>
				<input type="email" class="form-control" id="mail" name="mail" required="required"  >
			</div>			
	
<br/>
<br/>
			
			<button type="submit" class="btn btn-primary">Insertar</button>
			
			
			
			</form>
		</div>	
	
	
	</div>
 <footer class="bg-light text-center text-lg-start">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2022 Garrido Agustín:
    <a class="text-dark" href=""></a>
  </div>
  <!-- Copyright -->
</footer>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 
</body>
</html>