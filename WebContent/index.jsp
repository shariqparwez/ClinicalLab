<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" type="text/css" rel="stylesheet"></link>
</head>
<body>

<nav>
		<ul>
			<li><a href="Home.html"><span style="padding-left: 5px">Patient</span></a></li>
			<li><a href="Book.html"><span style="padding-left: 5px">Doctor</span></a></li>
			<li><a href="Order.html"><span style="padding-left: 5px">Lab Tests</span></a></li>
			<li><a href="Review.html"><span style="padding-left: 5px">Help</span></a></li>
		</ul>
	</nav>
	
	<section>
		<form method="get">
			<table id="clinic">
				<tr>
					<td><label>Role</label></td>
					<td>
					<select id="sel" name="role" onchange="fillLabCode()">
						<option value="ADM">Administrator</option>
						<option value="MGR">Manager</option>	
						<option value="LTE">LabTechnician</option>
						<option value="OPR">Operator</option>
					</select></td>
				</tr>
				<tr>
					<td><label>LabCode</label></td>
					<td>
					<select id="lab" name="labCode">
						<option value=""></option>
					</select></td>
				</tr>
				<tr>
					<td><label>UserName</label></td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="password" name="passWord" placeholder="passWord" required></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" onclick="fillLabCode()" value="Login"></td>
				</tr>
			</table>
		</form>	
	</section>
	
	<script type = "text/javascript">
		/*var doctor={
		    "Admin" : {
		        "LabCode" : "Chd01,Chd02,Chd03"
		    },
		    "Manager" : {
		        "LabCode" : "Dli01,Dli02,Dli03"
		    },
		    "Technician" : {
		        "LabCode" : "Ggn01,Ggn02,Ggn03"
		    },
		    "Operator" : {
		        "LabCode" : "Msz01,Msz02,Msz03"
		    }
		}*/
		
		function fillLabCode(){
			ele = document.getElementById("sel");
			lab = document.getElementById("lab");
			
			strUser = ele.options[e.selectedIndex].value;
			document.write("hello");
				if(strUser=="ADM"){
					lab.appendChild("<option value=" + doctor.Admin.LabCode[0] + "></option>");
				}
		}
	</script>

</body>
</html>