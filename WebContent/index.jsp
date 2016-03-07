<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" type="text/css" rel="stylesheet"></link>
<script type="text/javascript" src= "jslibs/jquery-1.12.1.js"></script> 
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
</head>
<body>
	<span><a href= "index.jsp?locale=in">India |</a></span>
	<span><a href= "index.jsp?locale=fr">France</a></span>
	
	<fmt:setLocale value="${param['locale']}"/>
	
	<fmt:setBundle basename= "MessageResources" var= "msg" scope= "page"/>
<nav>

	<header>
			<%@ include file="header.jsp" %>
	</header>
		<ul>
			<li><a href="Home.html"><span style="padding-left: 5px">Patient</span></a></li>
			<li><a href="Book.html"><span style="padding-left: 5px">Doctor</span></a></li>
			<li><a href="Order.html"><span style="padding-left: 5px">Lab Tests</span></a></li>
			<li><a href="Review.html"><span style="padding-left: 5px">Help</span></a></li>
		</ul>
	</nav>
	

	
	<section>
		<form action="ValidateServlet" method="get">
			<table id="clinic">
				<tr>
					<td><label><fmt:message key= "forms.label.role" bundle= "${msg }"/></label></td>
					<td>
					<select id="sel" name="role" onchange="fillLabCode()">
						<option value="Admin">Administrator</option>
						<option value="MGR">Manager</option>	
						<option value="LTE">LabTechnician</option>
						<option value="OPR">Operator</option>
					</select></td>
				</tr>
				<tr>
					<td><label><fmt:message key= "forms.label.labcode" bundle= "${msg }"/></label></td>
					<td>
					<select id="lab" name="labCode">
						<option value=""></option>
					</select></td>
				</tr>
				<tr>
					<td><label><fmt:message key= "forms.label.userName" bundle= "${msg }"/></label></td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td><label><fmt:message key= "forms.label.passWord" bundle= "${msg }"/></label></td>
					<td><input type="password" name="passWord" placeholder="passWord" required></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Login"></td>
				</tr>
			</table>
		</form>	
	</section>
	
	<footer>
			<%@ include file="footer.jsp" %>
	</footer>
	
	<script type = "text/javascript">

		
		var data = {
				"codes" : [
			         			{
			         				"role" : "Admin",
			         				"labcode" : [
			         				             {
			         				             	"code" : "Chd01"
			         				             },
			         				             {
			         				            	 "code" : "Chd02"
			         				             }
			         				             ]
			         			},
			         			{
			         				"role" : "MGR",
			         				"labcode" : [
			         				             {
			         				             	"code" : "Dli01"
			         				             },
			         				             {
			         				            	 "code" : "Dli02"
			         				             }
			         				             ]
			         			},
			         			{
			         				"role" : "LTE",
			         				"labcode" : [
			         				             {
			         				             	"code" : "Ggn01"
			         				             },
			         				             {
			         				            	 "code" : "Ggn02"
			         				             }
			         				             ]
			         			},
			         			{
			         				"role" : "OPR",
			         				"labcode" : [
			         				             {
			         				             	"code" : "Msz01"
			         				             },
			         				             {
			         				            	 "code" : "Msz02"
			         				             }
			         				             ]
			         			}
			        
				           ]
		}
		


		$('#sel').on('change', function(){
		    console.log($(this).val());
		    for(var i = 0; i < data.codes.length; i++)
		    {
		      if(data.codes[i].role == $(this).val())
		      {
		         $('#lab').html('<option value="000">-Select Code-</option>');
		         $.each(data.codes[i].labcode, function (index, value) {
		            $("#lab").append('<option value="'+value.code+'">'+value.code+'</option>');
		        });
		      }
		    }
		});
	</script>
 
</body>
</html>