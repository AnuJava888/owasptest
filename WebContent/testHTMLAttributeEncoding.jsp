<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.owasp.esapi.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 
</head>
<body>
 <h1 align="center">Test for HTML Attribute Encoding</h1>
	<form action="testHTMLAttributeEncoding.jsp" method="POST">
	<label for='width'>Enter width for image (Not Protected) </label>
    <input type="text" id="width" name="width" />
     <input type="submit" value="Submit" />
     <br/>
     <br/>
     <br/>
     <label for='encWidth'>Enter width image (OWASP Protected) </label>
     <input type="text" id="encWidth" name="encWidth" />
     <input type="submit" value="Submit" />
     <br/>
     <br/>
     <br/>
     </form> 
     <% 
        Encoder encoder = ESAPI.encoder();
        String width = request.getParameter("width");
        String encodedWidth = request.getParameter("encWidth");
        if ((width != null && !width.isEmpty())) { %>
         
          <img src="image1.jpg" alt="flower" width="<%=width%>" height="200">
        <!--  <br/>
         <br/>
         <br/>
         <p title =<%=request.getParameter("userName")%>> This paragaraph title attribute is  not encoded for html attribute </p> -->
        <% }
        if ((encodedWidth != null && !encodedWidth.isEmpty())) { %>
            
               <img src="image1.jpg" alt="flower" width="<%=encoder.encodeForHTMLAttribute(encodedWidth)%>" height="200">
            <!--  <br/>
             <br/>
             <br/>
              <p title =<%=encoder.encodeForHTMLAttribute(request.getParameter("encUserName"))%>> This paragraph title attribute is encoded for html Attribute</p>-->
            
       <%  } 
     %>
</body>
</html>