<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Map, org.jasig.cas.client.authentication.AttributePrincipal"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cas client 2</title>
</head>
<body>
	This is cas client 2.<hr>
	<%
		AttributePrincipal principal = (AttributePrincipal) request.getUserPrincipal();  
		Map<String, Object> attributes = principal.getAttributes();  
		for (String key : attributes.keySet()) {  
		    out.println(key + ":" + attributes.get(key) + "<br>");  
		}  
	%>
</body>
</html>