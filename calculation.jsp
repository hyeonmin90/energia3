<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String v13=request.getParameter("x1");
String v14=request.getParameter("w1");

double x11=Double.parseDouble(v13);
double w11=Double.parseDouble(v14);
double wx=x11/w11;
%>
initial power/node maximum voltage: <%=wx %>
</body>
</html>