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
						<li><a href="${pageContext.request.contextPath}/user/index"><i
								class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
						<li><a href="${pageContext.request.contextPath}/user/findAvailability"><i
								class="fa fa-search fa-fw"></i> Cerca Disponibilit&agrave;</a></li>
						<li><a href="${pageContext.request.contextPath}/user/addBooking"><i
								class="fa fa-cloud-upload fa-fw"></i> Aggiungi Prenotazione</a></li>
						<li><a href="${pageContext.request.contextPath}/user/deleteBooking"><i
								class="fa fa-trash-o fa-fw"></i> Elimina Prenotazione</a></li>
						<li><a href="${pageContext.request.contextPath}/user/bookings"><i
								class="fa fa-table fa-fw"></i> Prenotazioni</a></li>
						<li><a href="${pageContext.request.contextPath}/user/futureBookings"><i
								class="fa fa-table fa-fw"></i> Prenotazioni Future</a></li>
						<li><a href="${pageContext.request.contextPath}/user/historyBookings"><i
								class="fa fa-table fa-fw"></i> Prenotazioni Passate</a></li>
						<li><a href="${pageContext.request.contextPath}/user/resource"><i
								class="fa fa-tasks fa-fw"></i> Risorse</a></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
	</div>
</body>
</html>