<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Your Cart</title>

<style>

body{
font-family:Arial;
background:#f4f4f4;
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
background:#343a40;
color:white;
padding:10px;
}

td{
padding:10px;
}

tr:nth-child(even){
background:#f2f2f2;
}

.total{
font-weight:bold;
font-size:18px;
background:#ffc107;
}

a{
text-decoration:none;
background:#007BFF;
color:white;
padding:8px 15px;
border-radius:5px;
}

a:hover{
background:#0056b3;
}

</style>

</head>

<body>

<div class="container">

<h2>Your Shopping Cart</h2>

<%
int mobilePrice = 15000;
int laptopPrice = 50000;
int headPrice = 2000;

int mobileQty = Integer.parseInt(request.getParameter("mobileQty"));
int laptopQty = Integer.parseInt(request.getParameter("laptopQty"));
int headQty = Integer.parseInt(request.getParameter("headQty"));

int total = 0;
%>

<table border="1">

<tr>
<th>Product</th>
<th>Price</th>
<th>Quantity</th>
<th>Total</th>
</tr>

<%
if(mobileQty>0){
int cost = mobileQty * mobilePrice;
total += cost;
%>

<tr>
<td>Mobile</td>
<td><%=mobilePrice%></td>
<td><%=mobileQty%></td>
<td><%=cost%></td>
</tr>

<%
}

if(laptopQty>0){
int cost = laptopQty * laptopPrice;
total += cost;
%>

<tr>
<td>Laptop</td>
<td><%=laptopPrice%></td>
<td><%=laptopQty%></td>
<td><%=cost%></td>
</tr>

<%
}

if(headQty>0){
int cost = headQty * headPrice;
total += cost;
%>

<tr>
<td>Headphones</td>
<td><%=headPrice%></td>
<td><%=headQty%></td>
<td><%=cost%></td>
</tr>

<%
}
%>

<tr class="total">
<td colspan="3">Grand Total</td>
<td>₹ <%=total%></td>
</tr>

</table>

<br>

<a href="index.jsp">Continue Shopping</a>

</div>

</body>
</html>