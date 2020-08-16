
<cfoutput>
	<div class="logged">
	<form action="/../logout.cfm" >
    		<h2>Welcome #Session.userid#!</h2>
		<input type="submit" name="logout" value="Logout" id="submit-button">
   	</form>
	</div>

    <cfdump var=#Session#>
</cfoutput>
