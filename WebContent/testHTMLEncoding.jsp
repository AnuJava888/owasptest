<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.owasp.esapi.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Test HTML Encoding</title>
</head>
<body>
    <h1 align="center">Test for HTML Encoding</h1>
	<form action="testHTMLEncoding.jsp" method="POST">
	<label for='userName'>Enter your Name( Not Protected) : </label>
    <input type="text" id="userName" name="userName" />
     <input type="submit" value="Submit" />
     <br/>
     <br/>
     <br/>
     <label for='encUserName'>Enter your Name(OWASP Protected) : </label>
     <input type="text" id="encUserName" name="encUserName" />
     <input type="submit" value="Submit" />
      </form> 
	<% 
        Encoder encoder = ESAPI.encoder();
        String userName = request.getParameter("userName");
        String encodedUserName = request.getParameter("encUserName");
        if ((userName != null && !userName.isEmpty())) {
        // System.out.println("Encoded User Name :  \n"+encoder.encodeForHTML(userName));
         //out.println("<h2>Hello <b>"+encoder.encodeForHTML(userName)+"</b>!");
         out.println("<h2>Hello <b>"+userName+"</b>!"); %>
        <!--  <br/>
         <br/>
         <br/>
         <p title =<%=request.getParameter("userName")%>> This paragaraph title attribute is  not encoded for html attribute </p> -->
        <% }
        if ((encodedUserName != null && !encodedUserName.isEmpty())) {
            // System.out.println("Encoded User Name :  \n"+encoder.encodeForHTML(userName));
              out.println("<h2>Hello <b>"+encoder.encodeForHTML(encodedUserName)+"</b>!"); %>
            <!--  <br/>
             <br/>
             <br/>
              <p title =<%=encoder.encodeForHTMLAttribute(request.getParameter("encUserName"))%>> This paragraph title attribute is encoded for html Attribute</p>-->
            
       <%  } 
     %>
     
</body>
</html>