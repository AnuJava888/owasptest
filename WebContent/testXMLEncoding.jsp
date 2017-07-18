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
<body>
	<h1 align="center">Test for URL Encoding</h1>
	<form action="testForURLEncode.jsp" method="POST">
		<label for='url'>What you want to search on bing:(Not Protected) </label> 
		<input type="text" id="url" name="url" /> 
		<input type="submit" value="Submit" />
		 <br /> 
		 <br /> 
		 <br />
		 <label for='encUrl'>what you want to search on bing:(OWASP protected) </label> 
		 <input type="text" id="encUrl" name="encUrl" />
		<input type="submit" value="Submit"/> 
	</form>
	  <% 
        Encoder encoder = ESAPI.encoder();
        String url = request.getParameter("url");
        String encodedUrl = request.getParameter("encUrl");
        if ((url != null && !url.isEmpty())) { %>
             <br/>
             <br/>
             <br/>
        	<a href="http://www.bing.com/search?q=<%=url%>" target="_blank">Bing</a>
        	 
        
            
        <% }
        if ((encodedUrl != null && !encodedUrl.isEmpty())) { 
        	System.out.println(encoder.encodeForURL(encodedUrl));
        	%>
        	  </br>
              </br>
              </br>
         	<a href="http://wwww.bing.com/search?q=<%=encoder.encodeForURL(encodedUrl)%>" target="_blank">Bing</a>
         <% } 
        %> 
     
	
</body>
</html>