<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<script type="text/javascript" src="Validation.js"></script>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<form action="Login" onsubmit="return changepassValidation()" method="post">
<center><table border="2"></center>
<caption>Log In</caption>
<%
     String userEmail=(String)session.getAttribute("uemail");
     String adminEmail=(String)session.getAttribute("aemail");
%>
<tr>

<td>Select</td>
<td><select name="type">
<%if(userEmail!=null && adminEmail==null){ %>
<option value="user">User</option>
<%} %>
<%if(userEmail==null && adminEmail!=null){ %>
<option value="admin">Admin</option>
<%} %>
</select></td>
<td><span id="selecterror" style="color: red;"></span></td>
</tr>


<%if(userEmail!=null && adminEmail==null){ %>
<tr>
<th>Email id:</th>
<th><input type="email" name="email" id="email" placeholder="Enter the email"></th>
<th><span id="emailr" style="color:red;"></span></th>
</tr>
<%} %>

<%if(userEmail==null && adminEmail!=null){ %>
<tr>
<th>Email id:</th>
<th><input type="email" name="email" id="email" placeholder="Enter the email"></th>
<th><span id="emailr" style="color:red;"></span></th>
</tr>
<%} %>


<tr>
<th>Old Password:</th>
<th><input type="password" name="opass" id="opass" placeholder="Enter the old Password "></th>
<th><span id="opassr" style="color:red;"></span></th>
</tr>

<tr>
<th>New Password:</th>
<th><input type="password" name="npass" id="npass" placeholder="Enter the New Password "></th>
<th><span id="npassr" style="color:red;"></span></th>
</tr>

<tr>
<th>Confirm Password:</th>
<th><input type="password" name="conpass" id="conpass" placeholder="Enter the confirm Password "></th>
<th><span id="conpassr" style="color:red;"></span></th>
</tr>


</table>
<button type="submit" name="action" value="Changepass">Confirm</button>
<button type="reset">Reset</button>
</form>
<script type="text/javascript">

function changepassValidation(){
	email=document.getElementById("email").value;
	if(email==""){
		document.getElementById("emailr").innerHTML="Please Enter Email";
		return false;
	}
		if(email.indexOf('@')<0 || email.indexOf('.')<0){
		document.getElementById("emailr").innerHTML="Please Enter Valid Email";
		return false;
	}
	
	op=document.getElementById("opass").value;
	if(op==""){
		document.getElementById("opassr").innerHTML="Please Enter Old Password";
		return false;
	}
	
	if(op.length<8){
		document.getElementById("opassr").innerHTML="Please Enter Valid Password";
		return false;
	}
	
	np=document.getElementById("npass").value;
	if(np==""){
		document.getElementById("npassr").innerHTML="Please Enter New Password";
		return false;
	}
	if(np.length<8){
		document.getElementById("npassr").innerHTML="Please Enter Valid Password";
		return false;
	}
	
	cp=document.getElementById("conpass").value;
	if(cp==""){
		document.getElementById("conpassr").innerHTML="Please Confirm Password";
		return false;
	}
	if(cp.length<8){
		document.getElementById("conpassr").innerHTML="Please Enter Valid Password";
		return false;
	}
	
	return true;
}
</script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>