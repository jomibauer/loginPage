<cfoutput>
<cfset errorMsg=''>
<cfscript>
if (isdefined("url.errormessage")){
    errorMsg = url.errormessage
}
</cfscript>
<div class="logged">
<h2>Images</h2>

<cfdirectory directory="mywebsitefiles" action="list" type="file" filter="*.jpg" name="images">
<label class="form-style">
	<form class="img-form" action="action_pages/imageSelect.cfm" method="POST">
		<select name="trees" class="tree-select">

			<cfloop query="images">
		
				<cfset displayName = replaceNoCase(#name#, "_", " ", "all")>
				<cfset displayName = uCase(replaceNoCase(#displayName#, ".jpg", "", "one"))>
				<option value=#name#>#displayName#</option>
			</cfloop>
		</select><br>
    	<input type="submit" value="Show me!">
	</form>
</label>
<p style="margin-bottom: 10px">or</p>
<label class="form-style">
	<h5 class="error-msg">#errorMsg#</h5>
	<form class="img-form" action="action_pages/uploadImg.cfm" method="POST" enctype="multipart/form-data">
		<input type="file" id="new-file" name="filename">
		<input type="submit" value="Upload file">
	</form>
</label>
<form action="action_pages/generatePDF.cfm" method="POST">
	<input type="hidden" name="htmlPath" value="#CGI.path_translated#">
	<input type="submit" id="submit-button" value="PDF this page">
	
</form>

</div>
</cfoutput>