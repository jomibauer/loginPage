<cfoutput>

<cfscript>
	if ((!isdefined("form.filename")) || #form.filename# == ''){
		location("../images.cfm?errormessage=Pick a file to upload")
	}
</cfscript>

<cffile action="upload" destination="./mywebsitefiles/" fileField="form.filename" nameconflict="makeUnique" accept="image/jpg, image/png">

<cflocation url="../images.cfm">

</cfoutput>