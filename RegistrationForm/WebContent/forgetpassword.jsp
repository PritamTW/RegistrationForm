<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
 #form{
 text-align: center;
 }

</style>
<meta charset="UTF-8">
<title>Change Password</title>


<%-- <%=session.getAttribute("userid")%> --%>
</head>
<body  style="text-align: center;">
 
 <center>
	<form action="updatepassword.jsp" method="get"  >
		<table border="1" width="30%" cellpadding="3">
		<br><br>
							<thead>
								<tr>
									<th colspan="2">Change Password Here</th>
								</tr>
							</thead>
							<tbody>
			<tr>
				<td>Enter UserName</td>
				<td><input type="text" name="user" value="" id="user"
					placeholder="Username" /></td>
			</tr>

			<tr>
				<td>New Password</td>
				<td><input type="password" name="new" placeholder="Enter password"></td>
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td><input type="password" name="confirm" placeholder="Confirm password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Change Password"></td>
				<td><a href="home.jsp"> <img alt="" src="Images/back1.png" width="50px" height="50px"></a></td>
			</tr>
			</tbody>
			
		</table>
	</form>
	</center>
</body>
<%@include file="footer.jsp" %>
</html>