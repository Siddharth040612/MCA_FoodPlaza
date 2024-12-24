<%@page import="com.plazza.pojo.Food"%>
<%@page import="com.plazza.dao.foodDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Cart</title>
<script type="text/javascript" src="Validation.js"></script>
<script type="text/javascript">
function total() {
	quan=document.getElementById("quantity").value;
	price=document.getElementById("foodprice").value;
	total=price*quan;
	document.getElementById("tprice").value=total;
}
</script>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
    foodDaoImpl fd=new foodDaoImpl();
    int foodid=Integer.parseInt(request.getParameter("foodid"));
    Food f=fd.searchById(foodid);
    String uemail=(String)session.getAttribute("uemail");
    
%>
<form action="cart" onsubmit="return AddCartValidation()" method="post">
<center><table border="2"></center>
<caption>ADD Cart</caption>
<tr>
<th>Food Id:</th>
<th><input type="text" name="foodid" id="foodid" placeholder="Enter food Id" value="<%=f.getFoodId()%>"></th>
<th><span id="foodidr" style="color:red;"></span></th>
</tr>

<tr>
<th>Email :</th>
<th><input type="text" name="email" id="email" placeholder="Enter your email" value="<%= uemail%>"></th>
<th><span id="emailr" style="color:red;"></span></th>
</tr>

<tr>
<th>Food Name:</th>
<th><input type="text" name="foodname" id="foodname" placeholder="Enter food Name" value="<%=f.getFoodName()%>"></th>
<th><span id="foodnamer" style="color:red;"></span></th>
</tr>

<tr>
<th>Food Price:</th>
<th><input type="text" name="foodprice" id="foodprice" placeholder="Enter food price" value="<%=f.getFoodPrice()%>"></th>
<th><span id="foodpricer" style="color:red;"></span></th>
</tr>

<tr>
<th>Quantity:</th>
<th><input type="text" name="quantity" id="quantity" placeholder="Enter quantity"></th>
<th><span id="quantityr" style="color:red;"></span></th>
</tr>

<tr>
<th>Total Price:</th>
<th><input type="text" name="totalprice" id="tprice" onclick="total()"></th>
<th><span id="totalpricer" style="color:red;"></span></th>
</tr>
</table>
<button type="submit" name="action" value="AddCart">Add To Cart</button>
<button type="reset">Reset</button>
</form>
<script type="text/javascript">

function AddCartValidation(){
	fd=document.getElementById("foodid").value;
	if(fd==""){
		document.getElementById("foodidr").innerHTML="Please Enter FoodId";
		return false;
	}
	
	ei=document.getElementById("email").value;
	if(ei==""){
		document.getElementById("emailr").innerHTML="Please Enter EmailId";
		return false;
	}
	
	fn=document.getElementById("foodname").value;
	if(fn==""){
		document.getElementById("foodnamer").innerHTML="Please Enter FoodName";
		return false;
	}
	
	fp=document.getElementById("foodprice").value;
	if(fp==""){
		document.getElementById("foodpricer").innerHTML="Please Enter FoodPrice";
		return false;
	}
	
	fq=document.getElementById("quantity").value;
	if(fq==""){
		document.getElementById("quantityr").innerHTML="Please Enter Quantity";
		return false;
	}
	
	return true;
}
</script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>