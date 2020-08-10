<!--- if user has not logged in send back to login screen --->
<cfscript>
if (!Session.isLoggedIn){
    location("index.cfm?errormessage=Please login first")
}
</cfscript>

<cfoutput>
    Welcome #Session.userid#!<br>
    <form action="logout.cfm">
	<input type="submit" name="logout" value="Logout">
    </form>
    <cfdump var=#Session#>
</cfoutput>
