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
				<h1 class="page-header">Elimina Prenotazione</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<form role="form" method="POST" action="${pageContext.request.contextPath}/user/deleteBookingDB">
							<div class="row">
								<div class="col-lg-4">
								<h4><font color="red"><b>${deleteError}</b></font></h4>
									<div class="form-group">
										<label>ID Risorsa</label> <input class="form-control" name="id"
											placeholder="Inserire l'ID della risorsa" required autofocus>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4">
									<button type="submit" class="btn btn-primary btn-lg">Elimina</button>
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