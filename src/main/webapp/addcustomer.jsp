<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<form action="customer" onsubmit="return AddCustomerValidation()"
		method="post">
		<center>
			<table border="2">
				</center>
				<caption>ADD Customer</caption>
				<tr>
					<th>Customer Name:</th>
					<th><input type="text" name="customerName" id="customerName"
						placeholder="Enter Customer Name"></th>
					<th><span id="customerNamer" style="color: red;"></span></th>
				</tr>

				<tr>
					<th>Customer EmailId:</th>
					<th><input type="text" name="customerEmailId"
						id="customerEmailId" placeholder="Enter Customer Emailid"></th>
					<th><span id="customerEmailIdr" style="color: red;"></span></th>
				</tr>

				<tr>
					<th>Password:</th>
					<th><input type="text" name="password" id="password"
						placeholder="Enter Password"></th>
					<th><span id="passwordr" style="color: red;"></span></th>
				</tr>

				<tr>
					<th>Customer Add:</th>
					<th><input type="text" name="customerAdd" id="customerAdd"
						placeholder="Enter Customer Add"></th>
					<th><span id="customerAddr" style="color: red;"></span></th>
				</tr>

				<tr>
					<th>Customer Contact:</th>
					<th><input type="text" name="customerContactNo"
						id="customerContactNo" placeholder="Enter Customer Contact"></th>
					<th><span id="customerContactNor" style="color: red;"></span></th>
				</tr>
			</table>
			<br>
			<button type="submit" name="action" value="AddCustomer">Add
				Customer</button>
			<button type="reset">Reset</button>
	</form>
	<script type="text/javascript">
		function AddCustomerValidation() {
			cn = document.getElementById("customerName").value;
			if (cn == "") {
				document.getElementById("customerNamer").innerHTML = "Please Enter CustomerName";
				return false;
			}

			ce = document.getElementById("customerEmailId").value;
			if (ce == "") {
				document.getElementById("customerEmailIdr").innerHTML = "Please Enter CustomerEmailId";
				return false;
			}

			pa = document.getElementById("password").value;
			if (pa == "") {
				document.getElementById("passwordr").innerHTML = "Please Enter Password";
				return false;
			}

			ca = document.getElementById("customerAdd").value;
			if (ca == "") {
				document.getElementById("customerAddr").innerHTML = "Please Enter CustomerAddress";
				return false;
			}

			cno = document.getElementById("customerContactNo").value;
			if (cno == "") {
				document.getElementById("customerContactNor").innerHTML = "Please Enter CustomerNo";
				return false;
			}
			return true
		}
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>