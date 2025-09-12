<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Productos</title>
    <link rel="stylesheet" type="text/css" href="${css}/alta_producto.css">
    <script type="text/javascript">

        function validaForm(ev){
            ev.preventDefault();
            let name = document.getElementById("name").value.trim();
            let usr = document.getElementById("usr").value.trim();
            let mail = document.getElementById("email").value.trim();
            let psw = document.getElementById("psw").value.trim();
            let psw2 = document.getElementById("psw2").value.trim();
            let error = document.getElementById("error");
            if (!name || !usr || !mail || !psw || !psw2) {
                error.textContent = "Todos los campos son obligatorios";
            }else if (psw != psw2) {
                error.textContent = "Las contraseñas no coinciden.";
            }else {
                error.textContent = "";
                ev.currentTarget.submit();
            }
        }

        function checkPsw(psw){
            return psw.length > 5;
        }

        window.onload = function(){
            document.getElementById("form_registro").addEventListener("submit", validaForm);
        }
    </script>
    </head>
    <body>
        <header class="cabecera">
            <h2>Registro Usuarios</h2>
        </header>
        <div id="contPrincipal">
            <form id="form_registro" action="${home}/registro_usuarios" method="post">
                <input id="name" type="text" name="name" placeholder="Nombre">
                <input id="usr" type="text" name="usr" placeholder="User">
                <input id="email" type="email" name="email" placeholder="E-Mail">
                <input id="psw" type="password" name="psw" placeholder="Password">
                <input id="psw2" type="password" name="psw2" placeholder="Confirma Password">
                <button type="submit">Login</button>
            </form>
            <p id="error">&nbsp;</p>
        </div>
    </body>
</html>