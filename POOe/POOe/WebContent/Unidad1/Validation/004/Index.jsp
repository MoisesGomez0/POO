<%@page import="Unidad1.ParameterManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="author" content="Programación Orientada a Objetos">
		<meta name="description" content="Ejemplo de Validación Usando Objetos">
		<tittle>Ejemplo</tittle>		
	</head>
	<body>
		<%
			ParameterManager pm = new ParameterManager();
			pm.analize(request.getParameterMap());
		%>
	</body>
</html>