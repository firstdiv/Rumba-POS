<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Rumba Collection &middot; POS</title>

<!-- CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/RES/styles/default.css" type="text/css" />

<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/RES/styles/ie9.css"/>
<![endif]-->

<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/RES/styles/ie8.css"/>
<![endif]-->
</head>
<body class="loginpage">
	<!--loginbox-->
	<div class="loginbox">

		<!--loginboxinner-->
		<div class="loginboxinner">

			<!--logo-->
			<div class="logo">
				<h1>
					<span>Rumba&nbsp;</span>Collection
				</h1>
			</div>
			<br clear="all" />

			<!--nousername-->
			<div class="nousername">
				<div class="loginmsg">The username you entered is incorrect.</div>
			</div>

			<!--nopassword-->
			<div class="nopassword">
				<div class="loginmsg">The password you entered is incorrect.</div>
				<div class="loginf">
					<div class="thumb">
						<img alt="" src="<%=request.getContextPath()%>/RES/images/wrong-password.png" />
					</div>

				<!--loginf-->
					<div class="userlogged">
						<h4></h4>
						<a href="<%=request.getContextPath()%>">Not <span></span> ?
						</a>
					</div>
				</div>
			</div>

			<form id="login" action="<%=request.getContextPath()%>" method="post">
				<div class="username">
					<div class="usernameinner">
						<input type="text" name="username" id="username" />
					</div>
				</div>
				<div class="password">
					<div class="passwordinner">
						<input type="password" name="password" id="password" />
					</div>
				</div>
				<button>Sign In</button>
			</form>
		</div>
	</div>

	<!-- JS -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/RES/scripts/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/RES/scripts/jquery-ui.custom.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/RES/scripts/jquery.cookie.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/RES/scripts/jquery.uniform.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/RES/scripts/general.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/RES/scripts/index.js"></script>

	<!--[if lt IE 9]>
		<script src="<%=request.getContextPath()%>/RES/scripts/css3-mediaqueries.js"></script>
<![endif]-->
</body>
</html>