<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><% //Es importante quitar el salto de linea que deberia ir aqui
if(request.getParameter("option") != null){
	if(request.getParameter("option").matches("fibonacci") &&
			request.getParameter("n") != null &&
			request.getParameter("n").toString().trim().matches("\\d")
			){
	}else{
		out.print("{\"error\":true,\"description\":\"No se encontro un parametro requerido\"}");
	}
	if(request.getParameter("option").matches("factorial") &&
			request.getParameter("n") != null &&
			request.getParameter("n").toString().trim().matches("\\d")
			){
	}else{
	}
}else{
		out.print("{\"error\":true,\"description\":\"No se encontro la variable 'option'\"}");
}

%>
