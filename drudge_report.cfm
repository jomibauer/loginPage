<cfoutput>
<h1>Data over Drudge Report</h1>
<cfhttp url="https://www.drudgereport.com/">

<cfset modifiedDrudge= REreplaceNoCase(CFHTTP.fileContent, '<A(.+?)/A>', "<a href='https://www.mind-over-data.com'> Mind over Data</a>", "ALL")>

<p>
#modifiedDrudge#
</p>

</cfoutput>