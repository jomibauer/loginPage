<cfoutput>
<h1>Data over Drudge Report</h1>
<cfhttp url="https://www.drudgereport.com/"
useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36 Edg/84.0.522.59"
resolveurl=true
>

<cfset modifiedDrudge= REreplaceNoCase(CFHTTP.fileContent, 'HREF=(.+?)>', "href='https://www.mind-over-data.com'>", "ALL")>


<p>
<img src="https://bing.com/th/id/OIP.O14ToU12fXdazcZFDGiSbQHaEL?w=289&h=180&c=7&o=5&pid=1.7">
#modifiedDrudge#
</p>

<cfdump var="#cfhttp#">

</cfoutput>