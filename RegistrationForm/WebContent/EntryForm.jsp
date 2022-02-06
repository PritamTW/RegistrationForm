
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% String date1="",date2="";
     
    Calendar cal=Calendar.getInstance();  //5 days before time
    cal.add(Calendar.DATE,-6);
    
   
    date2=new SimpleDateFormat("DD-MMM-yyyy hh:mm:ss").format( cal.getTime());
    System.out.println("fromDate>>>>>"+date2);
    
    date1=new SimpleDateFormat("DD-MMM-yyyy hh:mm:ss").format(new java.util.Date());  
    System.out.println("Todate>>>>>>>"+date1);
    
    out.println("date2 :"+date2); 
    
    out.println("date1 :"+date1);
    
    
    
 
%>

<table>
     <tr>
      <td><label> </label> 
      </td>
     </tr>
</table>
</body>
</html>