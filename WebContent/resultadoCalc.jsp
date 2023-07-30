<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado Calculadora</title>
</head>
<body>
<%
float num1 = Float.parseFloat(request.getParameter("num1"));
float num2 = Float.parseFloat(request.getParameter("num2"));
String operacao = request.getParameter("operacao");

float resultado = 0;

if (operacao.equals("soma")){
	resultado = num1 + num2;
}else if (operacao.equals("sub")){
	resultado = num1 - num2;
}else if (operacao.equals("div")){
	resultado = num1 / num2;
}else if (operacao.equals("mult")){
	resultado = num1 * num2;
}

out.println("Resultado:"+ resultado);


%>

</body>
</html>