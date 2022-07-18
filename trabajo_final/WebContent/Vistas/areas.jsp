<%@page import="Clases.AreasDAO"%>
<%@page import="Clases.Areas"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
	integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>
 
 
 
<body>

<div class="container-fluid">

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
	<h1>Listado de Áreas</h1>

	<div class="container">
		<div class="row">
			<a class="btn btn-dark col-4 m-4"
				href="AreasController?accion=nuevo">Agregar Área</a>

			<table class="table">
				<thead class="table-dark">
					<th>Id</th>
					<th>Nombre</th>
					<th>Teléfono</th>
					<th>Mail</th>
					<th class="text-center">Modificar</th>
					<th class="text-center">Eliminar</th>
				</thead>
				<%
				List<Areas> resultado = null;
				AreasDAO area = new AreasDAO();
				resultado = area.listarAreas();

				for (int i = 0; i < resultado.size(); i++) {
					String ruta = "AreasController?accion=modificar&id=" + resultado.get(i).getId_area();
					String rutaE = "AreasController?accion=eliminar&id=" + resultado.get(i).getId_area();
				%>
				<tr>
					<td><%=resultado.get(i).getId_area()%></td>
					<td><%=resultado.get(i).getNombre()%></td>
					<td><%=resultado.get(i).getTelefono()%></td>
					<td><%=resultado.get(i).getMail()%></td>
					<td class="text-center"><a href=<%=ruta%>> <i
							class="fa-solid fa-arrow-right-arrow-left"></i>
					</a></td>
					<td class="text-center"><a href=<%=rutaE%>></a>
					 <!-- Button trigger modal -->
						<button type="button" class="btn btn-danger"
							data-bs-toggle="modal" data-bs-target="#exampleModal">
							Eliminar</button> <!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Atención</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">¿Desea Eliminar al usuario ?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Cancelar</button>
										<button type="button" class="btn btn-danger">
											<a class=btn-danger style="color: white;" href=<%=rutaE%>>Borrar</a>
										</button>
									</div>
								</div>
							</div>
						</div></td>
				</tr>

				<%
				}
				%>


			</table>




		</div>
	</div>

</div>
 <footer class="bg-light text-center text-lg-start">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2022 Garrido Agustín.
    <a class="text-dark" href=""></a>
  </div>
  <!-- Copyright -->
</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>