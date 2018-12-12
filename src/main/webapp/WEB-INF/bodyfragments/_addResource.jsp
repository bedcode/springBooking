<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title}</title>
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
									<form role="form" method="POST" action="${pageContext.request.contextPath}/admin/addResourceDB">
										<div class="form-group">
											<label>Tipo Risorsa</label> <select class="form-control" required autofocus name="type">
												<option selected disable hidden>Scegli un tipo</option>
												<option>Auto</option>
												<option>Aula</option>
												<option>Computer</option>
											</select>
										</div>
										<div class="form-group">
											<label>Nome Risorsa</label> <input class="form-control"
												name="name" placeholder="Inserire il nome della risorsa" required>
										</div>
									    <div class="form-group">
											<label>Limite</label> <input type="number" min="1"
												class="form-control" name="boundary" style="text-align: right"
												placeholder="Inserire il limite della risorsa" required>
										</div>
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