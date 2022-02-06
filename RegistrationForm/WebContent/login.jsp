<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="conn1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    //Class.forName("com.mysql.jdbc.Driver");
     // Class.forName("org.gjt.mm.mysql.Driver"); 
    //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_LoginDetails","pritam", "Rajput@123");
     Class.forName(db_DRIVER_NAME); 
    Connection con = DriverManager.getConnection(db_URL,db_USERNAME,db_PASSWORD);
    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where user='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
</body>
</html>