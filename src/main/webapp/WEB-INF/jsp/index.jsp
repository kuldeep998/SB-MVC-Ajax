<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form id="sampleForm" method="post" action="/profile">
		
		
		<div>
			<button type="submit" name="submit">Submit Custom Data</button>
		</div>
	</form>
</body>
<script>
	$(document).ready(function() 
			{
		$('#sampleForm').submit(function(event) 
		{
			
			event.preventDefault();
			var formData={
					firstName:"kuldeep",
					lastName:"Argal",
					email:"kuldeep@gmail.com",
					password:"123456"
			};
			
			$.ajax({
				url : $("#sampleForm").attr("action"),
				type : 'POST',
				contentType : "application/json",
				data : JSON.stringify(formData),
				dataType : 'json',
				success : function(response) {
					console.log(response);
					window.location.href="/welcome";
				},
				error : function(xhr, status, error) {
					console.log(xhr.responseText);
				}
			});
		});
		
		
		
	});
</script>
</html>