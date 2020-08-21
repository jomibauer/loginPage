<cfoutput>
<div class="logged">
	<a href="/./logged/images.cfm">< < BACK</a><br>

	<cfset imgPath = "/./mywebsitefiles/" & #URL.image#>
	<div class="img-box">
		<img id="pic" src=#imgPath#><br>
		<label id="pic-label">#URL.image#</label>	
	</div>

	</div>
</cfoutput>