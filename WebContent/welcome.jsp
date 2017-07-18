<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<logic:redirect forward="helloWorld"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OWASP Test</title>
</head>
<body>

	  <h1 align="center">OWASP API TESTING</h1>
	 <form action="welcome.jsp">
     <input type="button" value="Test HTML Encoding" onClick="openPage('testHTMLEncoding.jsp')" />
     <br/>
     <br/>
     <br/>
     <input type="button" value="Test HTML Attribute Encoding" onclick="openPage('testHTMLAttributeEncoding.jsp')" />
     <br/>
     <br/>
     <br/>
     <input type="button" value="Test URL Encoding" onclick="openPage('testForURLEncode.jsp')" />
      <br/>
     <br/>
     <br/>
     <input type="button" value="Test JavaScript Encoding" onclick="openPage('testEncodingForJavaScript.jsp')" />
      <br/>
     <br/>
     <br/>
     <input type="button" value="Test CSS Encoding" onclick="openPage('testEncodeForCSS.jsp')" />
      <br/>
     <br/>
     <br/>
     <input type="button" value="Test XML Encoding" onclick="openPage('testEncodeForXML.jsp')" />
    </form>
    
    
    
    <script type="text/javascript">
	function openPage(pageURL)
    {
      window.location.href = pageURL;
    }
	</script>
</body>
</html>