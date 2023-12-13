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
<script>
	function valid(){
		var price=document.getElementById("price").value;
		  if (/[A-Z]/.test(price)) {
			  alert("Invalid price value");
			    return false;
		}
		  if (/[a-z]/.test(price)) {
			  alert("Invalid price value");
			   return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div class="container">
	<form action="image" method="post" >
		<div class="input"><input type="file" name="product_path" class="product_path" required/></div>
		<div class="input"><input type="text" name="pro_name" class="pid" placeholder="Product_name" required/></div>
		<div class="input"><input type="text" name="price" placeholder="Price" id="price" required /></div>
		<div class="input"><input type="text" name="pid" placeholder="Product_id"/ required></div>
		<div><input type="submit" onclick="return valid()"/></div>
	</form>
</div>
</body>
</html>