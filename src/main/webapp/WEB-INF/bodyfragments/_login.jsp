<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Entra</h3>
					</div>
					<div class="panel-body">
						<form role="form" name='f' action="/j_spring_security_check" method='POST'>
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="Username" name="username"
										type="text" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name="password" type="password">
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">Ricordami
									</label>
								</div>
								
								<input name="submit" type="submit" value="submit" />
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>