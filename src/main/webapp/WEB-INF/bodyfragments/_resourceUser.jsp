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
					<h1 class="page-header">Risorse</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Tabella Risorse</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
									    <th style="text-align: left">Id</th>
										<th>Tipo Risorsa</th>
										<th>Nome Risorsa</th>
										<th>Limite</th>
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
	</div>
	<!-- /#wrapper -->

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>	
	$(document).ready(function() {
        $('#dataTables-example').DataTable({
            "ajax": "/user/resourcelist",
            "language": {
                "url":" //cdn.datatables.net/plug-ins/1.10.19/i18n/Italian.json"
            }, 
            "columnDefs": [
                { className: "text-right", "targets": [0, 3] }
              ],
            "columns": [
               { "data": "id" },
               { "data": "type" },
               { "data": "name" },
               { "data": "boundary" }
            ]
        });
    });
    </script>
</body>
</html>