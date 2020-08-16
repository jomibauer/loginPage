<!--- Set the isLoggedIn back to False, then send user back to index with a message to let them know they logged out successfully. --->

<cfset Session.isLoggedIn=False>
<cflocation url="/../index.cfm?errormessage=You have logged out. Bye!">