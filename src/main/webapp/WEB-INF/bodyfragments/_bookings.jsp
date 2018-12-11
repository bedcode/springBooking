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
									<th style="text-align: left">ID</th>
									<th>Risorsa</th>
									<th>Utente</th>
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

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            "ajax": "/admin/bookinglist",          
            "columnDefs": [
                { className: "text-right", "targets": [0] }
              ],
            "columns": [
               { "data": "id" },
               { "data": "resource" },
               { "data": "appUser" },
               { "data": "startDate",
              	 "render": function (data, type, row) {
  						   var x = new Date(data);
  						   return new Date(x.getTime() - (x.getTimezoneOffset() * 60000)).toJSON();
              	 }
               },
               { "data": "endDate",
              	 "render": function (data, type, row) {
  				    	   var x = new Date(data);
  					       return new Date(x.getTime() - (x.getTimezoneOffset() * 60000)).toJSON();
              	 }
               },
            ]
        });
    });
    </script>
</body>
</html>