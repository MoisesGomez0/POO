<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="swd">
        <meta name="description" content="Validaciones con POO en FrontEnd">
        <title>Validaciones con POO en FrontEnd</title>
    </head>
    <body>
        <!--<form action="service.jsp" onsubmit="alert('Se está enviando el formulario')", si en el submit
        hay un valor false no se envia.
        -->
        <form action="service.jsp" onsubmit="return validate()" >
            <input type="text" id="name" placeholder="Nombre del Estudiante" name="name">
            <button type="submit">Enviar</button>
        </form>
        <script type="text/javascript">
            var a; //Variable visible en todo el script
            
            /*
                Ejemplo rápido de Javascript 
                Comentario de multiples líneas
            */

            //Comentario multilínea

            //Función
            function example(c,d,f,g){
                if(true){
                    var a; //Variable visible en toda la función
                    let b; //Variable visible solo dentro de if
                }
                return c+d*e-f
            }

            /*
            Ejemplo de clases en Javascript
            */

            function Human(name, age){
                this.name = name;
                this.age = age;
                }
            
            human = new Human("Programación Orientada a Objetos",5);

            function Validator(){
                this.name = function(name){
                    if(`\${name}`.trim().match(/^([A-ZÁÉÍÓÚ][a-záéíóú]{2,})( [A-ZÁÉÍÓÚ][a-záéíóú]{2,}){1,3}$/)){
                        return true;
                    }
                    return false;
                }
            }
            var validator = new Validator();
            console.log(validator.name("Programación Orientada a Objetos"));

            /*
                Ejemplo de DOM
            */

            function validate(){
                var name = document.querySelector("#name");
                var validator = new Validator();
                return validator.name(name.value);
            }



        </script>
    </body>
</html>