<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prenotazioni</title>
</head>
<body>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Prenotazioni</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
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
										<th>Utente</th>
										<th>Data Inizio</th>
										<th>Data Fine</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeX">
										<td>1</td>
										<td>Auto AA 111 AA</td>
										<td>Andrea</td>
										<td>19/11/2018 9:00</td>
										<td>19/11/2018 11:00</td>
									</tr>
									<tr class="even gradeC">
										<td>2</td>
										<td>Auto AA 111 AA</td>
										<td>Andrea</td>
										<td>19/11/2018 9:00</td>
										<td>19/11/2018 11:00</td>
									</tr>
									<tr class="odd gradeA">
										<td>3</td>
										<td>Auto AA 111 AA</td>
										<td>Andrea</td>
										<td>19/11/2018 9:00</td>
										<td>19/11/2018 11:00</td>
									</tr>
									<tr class="even gradeA">
										<td>4</td>
										<td>Auto AA 111 AA</td>
										<td>Andrea</td>
										<td>19/11/2018 9:00</td>
										<td>19/11/2018 11:00</td>
									</tr>
								</tbody>
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

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
</body>
</html>