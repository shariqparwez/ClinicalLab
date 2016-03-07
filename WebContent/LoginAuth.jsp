<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="css/style.css" type="text/css" rel="stylesheet"></link>
<script type="text/javascript" src= "jslibs/jquery-1.12.1.js"></script> 
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
</head>
<body>
<%! 
		boolean check;
	%>
	<%
		check = (boolean)request.getAttribute("logresult");
	%>
	
	<% if(check){ %>
		<header>
			<%@ include file="header.jsp" %>
		</header>
		<section>
			<form action="" method="get">
				<table>
					<tr>
						<td><label>Order Number</label></td>
						<td><input type="text"></td>
						<td><label>Collection Date</label></td>
						<td><input type="date"></td>
						<td><label>Collection Type</label>
						<td><input type="radio" name="collec" value="Lab">Lab <input type="radio" name="collec" value="Home">Home </td>
					</tr>
					<tr>
						<td class="thead">Patient Code</td>
						<td>
							<datalist id="json-datalist"></datalist>
								<input type="text" name="pCode" id="pCode" class="aligncenter"/>
								</td>
						<td class="thead">Patient Name</td>
						<td><input type="text" name="pName" id="pName" class="aligncenter" /></td>
						<td class="thead">Age</td>
						<td><input type="text" name="pAge" id="pAge" class="aligncenter"/></td>
					</tr>
					<tr>
						<td class="thead">Hand Phone</td>
						<td><input type="tel" name="pPhone" id="pPhone" class="aligncenter"/></td>
						<td class="thead">Email</td>
						<td><input type="email" name="pEmail" id="pEmail" class="aligncenter" /></td>
						<td class="thead">Gender</td>
						<td>Male<input type="radio" name="Gender" />
							Female<input type="radio" name="Gender" />
						</td>
					</tr>
					
					<tr>
						<td class="thead">Doctor Code</td>
						<td><input type="text" name="dCode" id="doctorId" /></td>
						<td colspan="2" class="thead">Doctor Name</td>
						<td colspan="2"><input type="text" id="doctorName" /></td>
					</tr>
				
				</table>
				
			<h2>Test Details</h2>
	
	<table class="testOrders">
    <tr>
        <td>Test Code</td>
        <td>Test Name</td>
        <td>Amount</td>
    </tr>
    <tr>
        <td>
            <input type="text" name="testCode" id="testCode1"/>
        </td>
        <td>
            <input type="text" name="testName" id="testName1" />
        </td>
        <td>
            <input type="text" name="Amount" id="testPrice1" />
        </td>
    </tr>
	</table>
	<table>
		<tr>
			<th colspan= "2">Total</th>
			<th>10</th>
		</tr>
	</table>
	<input type= "button" id="addOrder" value= "Add Order">
			
			</form>
		
		
		
		</section>
	<%} else{ %>
		<h3>LOGIN UNSUCCESSFUL!!!</h3>
		<% } %>
		
		<footer>
			<%@ include file="footer.jsp" %>
		</footer>
		
		<script>
		 $(function(){
				
			   var counter = 1;
			   jQuery('#addOrder').click(function(event){
			       event.preventDefault();
			       counter++;
			       var newRow = jQuery('<tr><td><input type="text" id="testCode' +
			           counter + '"/></td><td><input type="text" id="testName' +
			           counter + '"/></td><td><input type="text" id="Amount' +
			           counter + '"/></td></tr>');
			       $('table.testOrders').append(newRow);
			   });
			}); 
		   
		 $(function() { 
				
				$("#doctorId").on('blur',function(){
					
					var usrId = $(this).val();
					$.ajax ({
						
						type: 'GET', 
			            url: "Doctor.json",
			            dataType: "text",
			            success: function(data) {
			            	docarray=$.parseJSON(data);
			            	var flag = false;
			                for (var i = 0;i < docarray.length;++i) {
			                	if(usrId == docarray[i].doctorCode) {
			                		$("#doctorName").val(docarray[i].doctorName);
			                		flag = true;
			                	}
			                }
			                if(!flag)
			                	$("#doctorName").val("");
			            }
					});
				});
				
			});
		</script>
	
</body>
</html>