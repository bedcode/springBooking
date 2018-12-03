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
			<a href="${pageContext.request.contextPath}/admin/addResource"><button
					type="button" class="btn btn-outline btn-info">Aggiungi
					una Risorsa</button></a>
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
										<th>Tipo Risorsa</th>
										<th>Nome Risorsa</th>
										<th>Limite</th>
										<th>Modifica</th>
										<th>Elimina</th>
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
            "ajax": "/admin/resourcelist",
            "columns": [
               { "data": "type" },
               { "data": "name" },
               { "data": "boundary" },
               {"defaultContent": '<button type="button" class="btn btn-default btn-circle" onclick=""><i class="fa fa-pencil"></i></button>'},
               {"defaultContent": '<button type="button" class="btn btn-default btn-circle" onclick=""><i class="glyphicon glyphicon-trash"></i></button>'}
            ]
        });
    });
    </script>
</body>
</html>