<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<script>
		var data
		var ajax = new XMLHttpRequest();
		ajax.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
				{
				console.log(ajax.responseText)
				document.querySelector("body").innerHTML = ajax.responseText;
				}
		}
		ajax.open("post", "./Dashboard/History", true);
		ajax.send();
		
	</script>
</body>
</html>