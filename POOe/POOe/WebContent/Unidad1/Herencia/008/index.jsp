<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="author" content="swd">
	<meta name="description" content="Demostración de herencia en POO.">
	<title>Demostración de Herencia en POO</title>
</head>
<!-- Haga un programa que reciba un parámetro "etiqueta HTML", de tal forma
que el backend imprima/genere dicha etiqueta en conjunto con un segundo
parámetro "contenido de la etiqueta" -->
<body>
	<form method="POST" action="service.jsp">
	<!-- 
		<select name="country">
		<option value="Valor que se envia">Lo que se muestra en pantalla</option>
	 	<option value="HN">Honduras></option>
	 	<option value="US">US></option>
	 	<option value="CO">Colombia></option>
	 	</select>
	 -->
		 <select name="htmlTAG">
		 	<option value="0">Span</option>
		 	<option value="1">Paragraph</option>
		 	<option value="2">Anchor</option>
		 	<option value="3">Division</option>
		 </select>
		 <textarea rows="3" cols="8">
		 </textarea>
		<button type="submit">Enviar Formulario</button>
	</form>
</body>
</html>