<!DOCTYPE html>
<html lang="it">

<body>
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
					<li><a href="${pageContext.request.contextPath}/index"><i
							class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
					<li><a href="${pageContext.request.contextPath}/addResource"><i
							class="fa fa-edit fa-fw"></i> Aggiungi Risorsa</a></li>
					<li><a href="risorse.html"><i class="fa fa-tasks fa-fw"></i>
							Risorse</a></li>
					<li><a href="prenotazioni_admin.html"><i
							class="fa fa-table fa-fw"></i> Prenotazioni</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side -->
	</nav>
</body>
</html>