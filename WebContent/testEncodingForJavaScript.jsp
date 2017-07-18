<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.owasp.esapi.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script type="text/javascript" >
               function createAlert(var usrname){
            	   alert(usrname);
               }
           </script>
<title> Test  Encoding</title>
</head>
<body>
    <h1 align="center">Test for JavaScript Encoding</h1>
	<form action="testEncodingForJavaScript.jsp" method="POST">
	<label for='userName'>Enter your Name( Not Protected) : </label>
    <input type="text" id="userName" name="userName" />
     <input type="submit" value="Submit" />
      <br/>
     <br/>
     <br/>
       <label for='encUserName'>Enter your Name(OWASP Protected) : </label>
     <input type="text" id="encUserName" name="encUserName" />
     <input type="submit" value="Submit"/>
   	<% 
        Encoder encoder = ESAPI.encoder();
        String userName = request.getParameter("userName");
        String encodedUserName = request.getParameter("encUserName");
        if(userName!= null && !userName.isEmpty()){%>
        <p><a href="#" onclick="alert('<%=userName%>')">Click me</a></p>
        
    
    <%}%> 
   
      <% if(encodedUserName!= null && !encodedUserName.isEmpty()){%>
            <p><a href="#" onclick="alert('<%= encoder.encodeForJavaScript(encodedUserName)%>')">Click me</a></p>
            
          <%}%> 
      
      </form> 


     
</body>
</html>