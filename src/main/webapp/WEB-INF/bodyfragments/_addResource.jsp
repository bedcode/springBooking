<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiungi Risorsa</title>
</head>
<body>

	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Aggiungi una Risorsa</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Nuova Risorsa</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-4">
								
								    <% 
								       String name = (String) session.getAttribute("name");
								       String error = (String) session.getAttribute("error");
								    %>
								    <font color="red"><b><%=error != null ? error:""%></b></font>
									<form role="form" method="POST" action="/addresourceservlet">
										<!-- <div class="form-group">
											<label>Tipo Risorsa</label> <select class="form-control" required>
												<option value="" selected disable hidden>Scegli un tipo</option>
												<option name="type" value="">Auto</option>
												<option name="type" value="">Aula</option>
												<option name="type" value="">Computer</option>
											</select>
										</div> -->
										<div class="form-group">
											<label>Nome Risorsa</label> <input class="form-control"
												name="name" value="<%=name != null ? name: ""%>" placeholder="Inserire il nome della risorsa" required>
										</div>
										<!-- <div class="form-group">
											<label>Limite</label> <input type="number" min="1"
												class="form-control" name="constraint" value=""
												placeholder="Inserire il limite della risorsa" required>
										</div> -->
										<button type="submit" class="btn btn-primary btn-lg">Salva</button>
										<button type="reset"
											class="btn btn-outline btn-primary btn-lg">Annulla</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>