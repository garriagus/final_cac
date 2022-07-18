<%@page import="Clases.AreasDAO"  %>
<%@page import="Clases.Areas"%>
<%@page import="java.util.List"%>  


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Areas</title>
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
		<h1 class="text-center" >Modificar Áreas</h1>

		<div class="row" >
				<%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Areas resultado=null;
				AreasDAO area=new AreasDAO();
				resultado=area.mostrarArea(mid);				
				%>
		
		<form class="p-5" action="AreasController?accion=actualizar" method="post">
			
			<div class="mb-3">				
				<input type="hidden"  class="form-control" id="id" name="id"  value=<%=resultado.getId_area() %> >
			</div>
			
			
			<div class="mb-3">
				<label for="nombre" class="form-label" >Nombre</label>
				<input type="text" class="form-control" id="nombre" name="nombre"  value=<%=resultado.getNombre() %> >
			</div>
			
			<div class="mb-3">
				<label for="telefono" class="form-label" >Teléfono</label>
				<input type="text" class="form-control" id="telefono" name="telefono" value=<%=resultado.getTelefono() %> >
			</div>
			
		
			<div class="mb-3">
				<label for="mail" class="form-label" >mail</label>
				<input type="email" class="form-control" id="mail" name="mail" value=<%=resultado.getMail() %> >
			</div>
		
										
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
			  Modificar
			</button>
			
							<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Atención</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        ¿Desea Modificar el Área?
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-success">Aceptar</button>
			      </div>
			    </div>
			  </div>
			</div>
						
			
			</form>
		
		
		
		
		</div>	
	
	
	</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 
</body>
</html>