<cfoutput>
<cfset errorMsg=''>
<cfset Session.userid = ''>

<!--- if there is an error message show it --->
<cfscript>
if (isdefined("url.errormessage")){
    errorMsg = url.errormessage
}
</cfscript>

<h2>#errorMsg#</h2>
<h1>Please sign in</h1>

<form action="validateLogin.cfm" method="POST">
    <input type="text" name="userid" placeholder="UserID"><br>
    <input type="text" name="password" placeholder="Password"><br>
    <input type="submit">

</form>

<cfdump var=#Session#>


</cfoutput>