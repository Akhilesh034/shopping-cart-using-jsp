<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Shopping Cart</title>

<style>

body{
font-family: Arial;
background-color:#f4f4f4;
text-align:center;
}

.container{
width:60%;
margin:auto;
background:white;
padding:20px;
border-radius:10px;
box-shadow:0px 0px 10px gray;
}

table{
width:100%;
border-collapse:collapse;
margin-top:20px;
}

th{
background:#007BFF;
color:white;
padding:10px;
}

td{
padding:10px;
}

tr:nth-child(even){
background:#f2f2f2;
}

input[type=number]{
width:60px;
padding:5px;
}

button{
background:#28a745;
color:white;
border:none;
padding:10px 20px;
border-radius:5px;
cursor:pointer;
}

button:hover{
background:#218838;
}

</style>

</head>

<body>

<div class="container">

<h2>Online Shopping</h2>

<form action="cart.jsp" method="post">

<table border="1">

<tr>
<th>Product</th>
<th>Price (₹)</th>
<th>Quantity</th>
</tr>

<tr>
<td>Mobile</td>
<td>15000</td>
<td><input type="number" name="mobileQty" value="0" min="0"></td>
</tr>

<tr>
<td>Laptop</td>
<td>50000</td>
<td><input type="number" name="laptopQty" value="0" min="0"></td>
</tr>

<tr>
<td>Headphones</td>
<td>2000</td>
<td><input type="number" name="headQty" value="0" min="0"></td>
</tr>

</table>

<br>

<button type="submit">Add to Cart</button>

</form>

</div>

</body>
</html>