<cfoutput>
    Welcome #Session.userid#!<br>
    <a href="/cgidump.cfm">Check out the CGI scope</a><br>
    <a href="/drudge_report.cfm">Check out the Data over Drudge Report</a>

    <form action="logout.cfm">
	<input type="submit" name="logout" value="Logout">
    </form>

    <cfdump var=#Session#>
</cfoutput>
