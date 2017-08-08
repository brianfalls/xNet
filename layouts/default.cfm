<!DOCTYPE html>

<html>
	<head>
		<title>NAGR xNet</title>
	</head>

	<body>
		<div style="width: 800px; margin: 10px auto;">
            <p style="font-family: courier;">session.auth.isLoggedIn: <cfoutput>#session.auth.isLoggedIn#</cfoutput></p>
			<h2><cfoutput>#cgi.path_info#</cfoutput></h2>
			<div><cfoutput>#body#</cfoutput></div>
            <a href="index.cfm/login">Login</a>
		</div>
	</body>
</html>