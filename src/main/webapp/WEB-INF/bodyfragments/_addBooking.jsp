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
						<form role="form">
							<div class="row">
								<div class="col-lg-4">
									<div class="form-group">
										<label>Tipo Risorsa</label> <select class="form-control"
											required>
											<option value="" selected disable hidden>Scegli un
												tipo</option>
											<option value="Auto">Auto</option>
											<option value="Aula">Aula</option>
											<option value="Computer">Computer</option>
										</select>
									</div>
									<div class="form-group">
										<label>Data inizio prenotazione</label> <input type="date"
											required>
									</div>
									<div class="form-group">
										<label>Data fine prenotazione</label> <input type="date"
											required>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<label>Nome Risorsa</label> <input class="form-control"
											placeholder="Inserire il nome della risorsa" required>
									</div>
									<div class="form-group">
										<label>Ora inizio prenotazione</label> <input type="time"
											required>
									</div>
									<div class="form-group">
										<label>Ora fine prenotazione</label> <input type="time"
											required>
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