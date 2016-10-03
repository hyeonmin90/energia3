<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="VT.jsp" method="get">
<p>Put the initial angle velocity</p>
initial velocity: <input type="text" name="v" />rad/km<br/>
<p>Put the maximum voltage of in front of node</p>
maximum voltage: <input type="text" name="x11" />V<br/>
<p>Put the initial power</p>
initial power: <input type="text" name="w11" />kW/s<br/>
<p>Put the capacitance</p>
capacitance: <input type="text" name="ca" /><br/>
<p>Put the inductance</p>
inductance: <input type="text" name="in" /><br/>
<p>Put the phase angle</p>
phase angle: <input type="text" name="pa" />°<br/>

<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>