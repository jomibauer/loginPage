<cfoutput>
<div class="logged">
	<a href="/./logged/images.cfm">< < BACK</a><br>

	<cfset imgPath = "./mywebsitefiles/" & #URL.image#>
	<cfimage source=#imgPath# action="writetobrowser" height="500"><br>

	<label>#URL.image#</label>
</div>
</cfoutput>