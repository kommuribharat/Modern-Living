<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.container{
	height:90vh;
	display:flex;
	flex-direction:row;
	justify-content:center;
	align-items:center;
    row-gap: 1000px;
}
.input input{
    margin-bottom: 50px;
    font-size:1em;
    width:500px;
    padding:10px;
    font-size: 1em;
    border: 1px solid black;
    border-radius: 10px;
    background: transparent;
}
input[type="submit"]{
    padding:10px;
    width:200px;
    cursor:pointer;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post" action="details_upload">
			<div class="input"><input type="text" name="name" placeholder="NAME"/ required></div>
			<div class="input"><input type="text" name="spec_valu" placeholder="VALUE"/ required></div>
			<div class="input"><input type="text" name="product_id" placeholder="id"/ required></div>
			<div><input type="submit" value="submit next record"/></div>
		</form>
	</div>
</body>
</html>