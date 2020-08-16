<cfoutput>
<div class="logged">
<h2>Images</h2>

<cfdirectory directory="mywebsitefiles" action="list" type="file" filter="*.jpg" name="images">

<cfloop query="images">
	
	<cfset pageName = "/logged/images/image_page.cfm?image=" & #name#>
	
	<a href=#pageName#> #name#</a><br>
	
</cfloop>

</div>
</cfoutput>