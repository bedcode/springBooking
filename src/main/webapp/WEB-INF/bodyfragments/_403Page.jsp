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
				<h1 class="page-header">403</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>

		<%
			if (request.getAttribute("message") != null) {
		%>
		<div style="color: red;">${message}</div>
		<%
			}
		%>

		<%
			if (request.getAttribute("userInfo") != null) {
		%>
		<div>${userInfo}</div>
		<%
			}
		%>
	</div>
</body>

</html>