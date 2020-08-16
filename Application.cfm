<head>
<link rel="stylesheet" href="/style.css" type="text/css">
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
		location("/../index.cfm?errormessage=Please login first")
	}

	<!--- once logged in, easily navigate back to the welcome page --->
}

</cfscript>

<!--- This is the cfif and loop that create the tab navigator.  I found it difficult to get all the html I used for the buttons working properly  with writeOutput, so I had to move this part out of cfscript.  --->

<cfdirectory directory="logged" action="list" type="file" filter="*.cfm" name="loggedPages">



<!---  cfif Condition looks in the name column of the loggedPages query, then compares it to the current CGI.script_name with "logged" stripped, if it is part of the name.  If the current CGI.script_name is in the name column, it makes the tabs. --->

<cfset loggedPageArray = ValueArray(loggedPages, "name")>
<cfset currentPageScript = #replace(CGI.script_name, "/logged/", "")#>

<cfif ArrayContains(loggedPageArray, currentPageScript)>
	<div class="tabNavigate">
	<cfloop query="loggedPages">
		<!--- get url using the file name and the directory --->
		<cfset tempPath="/logged/" & #name#>

		<!--- format page names for the buttons --->
		<cfset pageName = #replace(#name#, ".cfm", '')#>
		<cfset pageName = #replace(#pageName#, "_", ' ')#>

		<!--- change css class if the tab is selected --->
		<cfif CGI.script_name == tempPath>
			<cfset buttonClass = "selected-tab">
		<cfelse>
			<cfset buttonClass = "tab">
		</cfif>
		
		<a href=#tempPath#>
		<button class=#buttonClass#>#pageName#</button>
		</a>
		
	</cfloop>
	
	</div>
		
</cfif>


</cfoutput>
</head>