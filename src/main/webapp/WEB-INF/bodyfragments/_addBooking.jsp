<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title}</title>
</head>
<body>

	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Aggiungi una Prenotazione</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Nuova Prenotazione</div>
					<div class="panel-body">
						<form role="form" method="POST"
							action="${pageContext.request.contextPath}/user/addBookingDB">
							<div class="row">
								<div class="col-lg-4">
									<h4><font color="red"><b>${error}</b></font></h4>
									<div class="form-group">
										<label>ID Risorsa</label> <input class="form-control" type="number" min="1"
											placeholder="Inserire l'ID della risorsa" required autofocus
											name="id" style="text-align: right">
									</div>
									<div class="form-group">
										<label>Controlla da</label> <input class="form-control"
											type="datetime-local" required name="startDate">
									</div>
									<div class="form-group">
										<label>Controlla fino a</label> <input class="form-control"
											type="datetime-local" required name="endDate">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4">
									<button type="submit" class="btn btn-primary btn-lg">Salva</button>
									<button type="reset" class="btn btn-outline btn-primary btn-lg">Annulla</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /#page-wrapper -->

</body>
</html>