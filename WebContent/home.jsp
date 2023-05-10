<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import="dao.UserDAOImpl"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "org.owasp.esapi.*" %>


<html>
  
   <body>
     
   
      
      <%
     
   	 String  un = (String)session.getAttribute("user");
    
      UserDAOImpl userdao = new UserDAOImpl();
      ResultSet data;
      
      data=userdao.data(un);
      String acno = data.getString("acno");
      String email = data.getString("email");
      String balance = data.getString("balance");
      String mobile = data.getString("mobile");
      String fb=data.getString("feedback");
      
      %>
      
      Hello <% out.println(ESAPI.encoder().encodeForHTML(un)); %>
      <br><br>
      You account number: <% out.println(ESAPI.encoder().encodeForHTML(acno)); %> <br>
      Your email id is: <% out.println(ESAPI.encoder().encodeForHTML(email)); %> <br>
      Your balance is: <% out.println(ESAPI.encoder().encodeForHTML(balance)); %> <br>
      Your mobile number is: <% out.println(ESAPI.encoder().encodeForHTML(mobile)); %> <br>
      Your feedback is: <% out.println(ESAPI.encoder().encodeForHTML(fb)); %> <br>

  <br> <a href="feedback.jsp">Feedback</a>
   </body>
   
</html>