<cfoutput>

<cfscript>
	if ((!isdefined("form.filename")) || #form.filename# == ''){
		location("../images.cfm?errormessage=Pick a file to upload")
	}
</cfscript>

<cftry>
	<cffile action="upload" destination="./mywebsitefiles/" fileField="form.filename" nameconflict="makeUnique" accept="image/jpg, image/png">
	<cflocation url="../images.cfm">
<cfcatch type="lucee.runtime.exp.ApplicationException">
	<cflocation url="../images.cfm?errormessage=Only upload JPG or PNG images">
</cfcatch>
</cftry>


</cfoutput>