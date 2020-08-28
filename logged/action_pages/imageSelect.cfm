<cfoutput>

<cfset pageName = "/logged/images/image_page.cfm?image=" & #form.trees#>
<cflocation url=#pageName#>
</cfoutput>