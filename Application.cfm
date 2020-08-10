<cfoutput>

<cfapplication name="LoginApp"
sessionmanagement="Yes">

<cfscript>
if (!isDefined("Session.isLoggedIn")){
	Session.isLoggedIn = False
}
</cfscript>

</cfoutput>