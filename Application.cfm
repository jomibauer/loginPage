<cfoutput>

<cfapplication name="LoginApp"
sessionmanagement="Yes"
sessiontype="J2EE">

<cfscript>
<!--- Create Session variables if needed --->
if (!isDefined("Session.isLoggedIn")){

	Session.isLoggedIn = False
}

<!--- if user has not logged in and tries to access a restricted screen, send back to login screen --->
if (CGI.script_name != "/index.cfm" && CGI.script_name != "/validateLogin.cfm"){

	if (!Session.isLoggedIn){
		location("index.cfm?errormessage=Please login first")
	}

	<!--- once logged in, easily navigate back to the welcome page --->
	elseif(CGI.script_name !="/welcome.cfm"){
		WriteOutput("<a href='/welcome.cfm'>Back to the welcome page</a>")
	}
}

</cfscript>


</cfoutput>