<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">

<body>

	<div id="wrapper">
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Cerca...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a href="${pageContext.request.contextPath}/admin/index"><i
								class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/addResource"><i
								class="fa fa-edit fa-fw"></i> Aggiungi Risorsa</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/resource"><i
								class="fa fa-tasks fa-fw"></i> Risorse</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/editResource"><i
								class="fa fa-edit fa-fw"></i> Modifica/Elimina Risorsa</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/bookings"><i
								class="fa fa-table fa-fw"></i> Prenotazioni</a></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
	</div>
</body>
</html>