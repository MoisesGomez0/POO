<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="author" content="swd">
	<meta name="description" content="Demostración de Herencia en POO.">
	<title>BackEnd: Demostración de Herencia en POO.</title>
</head>
<body>
	<%
		String content = "Hola mundo";
		ParagraphTag p = new ParagraphTag(content);
		p.setStyle("color:red;");
		out.print(p.print());
	%>
	
<%!
	public class HTMLTag{
	
	protected String name;
	protected String style;
	protected String content;
	
	public HTMLTag(){}
	
	public HTMLTag(String name, String style, String content){
		this.name = name;
		this.style = style;
		this.content = content;
	}
	
	public void setName(String name){
		this.name = name;
		}
	
	public void setStyle(String style){
		this.style = style;
	}
	
	public void setContent(String content){
		this.content = content;
	}
	
	public String getName(){
		return this.name;
		}
	
	public String getStyle(){
		return this.style;
		}
	
	public String getContent(){
		return this.content;
		}
	
	public String print(){
		
		StringBuilder styleTag = new StringBuilder("");
		if(this.style.length()>0){
			styleTag.append(" style='");
			styleTag.append("this.style");
			styleTag.append("'");
		}
		StringBuilder result = new StringBuilder(String.format("<%s%s>",this.name,style.toString()));
		result.append(this.content);
		result.append(String.format("</%s>",this.name));
		return result.toString();
	}
}

%>
<%!
public class ParagraphTag extends HTMLTag{
	public ParagraphTag(){
		this.style="";
		this.name="p";
		this.content="";
	}
	
	public ParagraphTag(String content){
		this.content = content;
		this.name = "p";
	}
}
%>
</body>
</html>
