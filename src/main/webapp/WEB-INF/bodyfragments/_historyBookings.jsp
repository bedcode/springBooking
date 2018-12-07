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
				<h1 class="page-header">Cronologia Prenotazioni</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<a href="${pageContext.request.contextPath}/user/addBooking"><button
				type="button" class="btn btn-outline btn-info">Aggiungi una
				Prenotazione</button></a>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Tabella Prenotazioni</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<table width="100%"
							class="table table-striped table-bordered table-hover"
							id="dataTables-example">
							<thead>
								<tr>
									<th>ID</th>
									<th>Risorsa</th>
									<th>Data Inizio</th>
									<th>Data Fine</th>
								</tr>
							</thead>
						</table>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- /#page-wrapper -->

    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            "ajax": "/user/historyBookinglist",
            "columns": [
               { "data": "id" },
               { "data": "resource" },
               { "data": "startDate" },
               { "data": "endDate" }
            ]
        });
    });
    </script>
</body>
</html>