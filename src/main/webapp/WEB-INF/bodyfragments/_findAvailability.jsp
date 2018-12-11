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
				<h1 class="page-header">Cerca Disponibilit&agrave;</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Cerca Disponibilit&agrave;</div>
					<div class="panel-body">
						<form role="form" method="POST"
							action="${pageContext.request.contextPath}/user/findAvailabilityForm">
							<div class="row">
								<div class="col-lg-4">
								    <h4><font color="green"><b>${dateMessage}</b></font></h4>
								    <h4><font color="red"><b>${errorMessage}</b></font></h4>
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
									<div class="form-group">
										<label>Durata</label> <input class="form-control" type="number" min="1" max="24"
											placeholder="Inserire la durata della risorsa" required name="duration" style="text-align: right">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4">
									<button type="submit" class="btn btn-primary btn-lg">Cerca</button>
									<button type="reset" class="btn btn-outline btn-primary btn-lg">Annulla</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>