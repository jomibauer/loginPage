<!--- check userid and password.  If correct go to welcome passing the userid in the URL --->
<cfscript>
if (isDefined("form.userid") and len(trim(form.userid)) NEQ 0){
    if (isDefined("form.password") AND form.password EQ "test"){
	<!--- If password is correct, set isLoggedIn to True and save the userid into the session scope --->

        Session.userid = form.userid
	Session.isLoggedIn = True
        location("welcome.cfm")
	}
}
</cfscript>
<!--- If userid or password is not defined or not correct then go back to login passing the errormessage in the URL--->
<cflocation url="index.cfm?errormessage=Your login information was incorrect please try again">