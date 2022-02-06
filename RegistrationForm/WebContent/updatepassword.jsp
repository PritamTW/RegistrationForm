<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<%@include file="conn1.jsp"%>
<head>
<meta charset="UTF-8">
<title>password</title>
</head>
<%-- <%=session.getAttribute("userid")%> --%>
<%

	String user = request.getParameter("user");
	String Newpass = request.getParameter("new");
	String cnfpass = request.getParameter("confirm");

	System.out.println("Username>>>" + user);
	System.out.println("Newpass>>>" + Newpass);
	System.out.println("cnfpass>>>" + cnfpass);

	/* String connurl = "jdbc:mysql://localhost:3306/mydb"; */
	Connection con = null;
	
	
	 session.setAttribute("userid", user) ;

	
	try {
		Class.forName(db);
		con = DriverManager.getConnection(db_URL, db_USERNAME, db_PASSWORD);
		Statement st = con.createStatement();
		Statement st1 = con.createStatement();
		
			/* if(user.contains("user")){ 
				System.out.println("in side if "+user); */
				 if(Newpass.equalsIgnoreCase(cnfpass)){
					System.out.println("in side 2 if N= "+Newpass+" C= "+cnfpass); 

			String UpdateQry="update members set pass='" +Newpass+ "' where user='" +user+ "'";
			System.out.println("UpdateQry>>>> :"+UpdateQry);
  			
			int i = st1.executeUpdate(UpdateQry);
			System.out.println(i+" row updated ");
			 out.println("<table><tr><td>welcome " + user);
		     out.println("</td></tr>");
		     out.println("<tr><td>Password changed Successfully...!</td></tr> </table>");
	        out.println("<table style='border:1px solid black'><tr><td>username</td><td> : "+user);
	        out.println("</td></tr><tr><td>password </td><td> : "+Newpass);
	        out.println("</td></tr>");
	        out.println("<tr><td>\n<a href='home.jsp'> Go to Login</a>");
	        out.println("</td></tr></table>");
			st1.close();
			con.close();
			
					} else{
					out.println("<table><tr><td>New password & confirm password must be same</td></tr>");
					out.println("<tr><td><a href='forgetpassword.jsp'><img alt='' src='Images/back1.png' width='50px' height='50px'></a>"); 
					out.println("</td></tr></table>"); 
				} 
	/* 	} else { 
			out.println("<table><tr><td>User not available on Database go to back </td></tr>");
			out.println("<tr><td><a href='forgetpassword.jsp'><img alt='' src='Images/back1.png' width='50px' height='50px'></a>"); 
			out.println("</td></tr></table>");  
		/* } */ 
	} catch (Exception e) {
		out.println(e);
	}
%>