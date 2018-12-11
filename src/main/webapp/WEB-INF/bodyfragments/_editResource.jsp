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
					<h1 class="page-header">Modifica o Elimina una Risorsa</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Modifica</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-4">
								<h4><font color="red"><b>${editError}</b></font></h4>
									<form role="form" method="POST" action="${pageContext.request.contextPath}/admin/editResourceDB">
										<div class="form-group">
											<label>ID</label> <input type="number" min="1"
												class="form-control" name="id"
												placeholder="Inserire l'ID della risorsa" autofocus required>
										</div>
									    <div class="form-group">
											<label>Limite</label> <input type="number" min="1"
												class="form-control" name="boundary" style="text-align: right"
												placeholder="Inserire il nuovo limite della risorsa" required>
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
			
						<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Elimina</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-4">
								<h4><font color="red"><b>${deleteError}</b></font></h4>
									<form role="form" method="POST" action="${pageContext.request.contextPath}/admin/deleteResourceDB">
										<div class="form-group">
											<label>Limite</label> <input type="number" min="1"
												class="form-control" name="id"
												placeholder="Inserire l'ID della risorsa" autofocus required style="text-align: right">
										</div>
										<button type="submit" class="btn btn-primary btn-lg">Elimina</button>
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