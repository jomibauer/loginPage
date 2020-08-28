<cfoutput>
<cfset errorMsg=''>
<cfset Session.userid = ''>

<!--- if there is an error message show it --->
<cfscript>
if (isdefined("url.errormessage")){
    errorMsg = url.errormessage
}
</cfscript>

<h3 class="error-msg">#errorMsg#</h3>


<form class="login-form" action="validateLogin.cfm" method="POST">
    <h1>Please sign in</h1>
    <input type="text" name="userid" placeholder="UserID">
    <input type="password" name="password" placeholder="Password">
    <input type="submit">

</form>


</cfoutput>