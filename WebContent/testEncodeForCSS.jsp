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
    <h1 align="center">Test for CSS</h1>
	<form action="testEncodeForCSS.jsp" method="POST">
	<label for='color'>Enter color( Not Protected) : </label>
    <input type="text" id="color" name="color" />
     <input type="submit" value="Submit" />
      <br/>
     <br/>
     <br/>
       <label for='encColor'>Enter color(OWASP Protected) : </label>
     <input type="text" id="encColor" name="encColor" />
     <input type="submit" value="Submit"/>
   	<% 
        Encoder encoder = ESAPI.encoder();
        String color = request.getParameter("color");
        String encodedColor = request.getParameter("encColor");
        if(color!= null && !color.isEmpty()){%>
       <h2 style="color:red;background:<%=color%>;">This is a red heading (Not Protected)</h2>
    
    <%}%> 
   
      <% if(encodedColor!= null && !encodedColor.isEmpty()){%>
              <h2 style="color:red;background:<%=encoder.encodeForCSS(encodedColor)%>;">This is a red heading (OWASP Protected)</h2>
            
          <%}%> 
      
      </form> 


     
</body>
</html>