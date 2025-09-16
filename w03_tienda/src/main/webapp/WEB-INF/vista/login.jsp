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
            let usr = document.getElementById("usr").value.trim();
            let psw = document.getElementById("psw").value.trim();
            let error = document.getElementById("error");
            if (!usr ||  !psw) {
                error.textContent = "Todos los campos son obligatorios";
            }else if (!checkPsw(psw)) {
                error.textContent = "La contraseña debe tener al menos 6 carateres.";
            }else {
                error.textContent = "";
                ev.currentTarget.submit();
            }
        }

        function checkPsw(psw){
            return psw.length > 5;
        }

        window.onload = function(){
            document.getElementById("form_login").addEventListener("submit", validaForm);
        }
    </script>
    </head>
    <body>
        <header class="cabecera">
            <h2>Login</h2>
        </header>
        <div id="contPrincipal">
            <form id="form_login" action="${home}/login" method="post">
                <input id="usr" type="text" name="usr" placeholder="User">
                <input id="psw" type="password" name="psw" placeholder="Password">
                <button type="submit">Login</button>
            </form>
            <p id="error">&nbsp;
                <c:if test="${error eq 'credenciales'}">Credenciales incorrectas.</c:if>
                <c:if test="${error eq 'disable'}">El usuario está bloqueado.</c:if>
            </p>
        </div>
    </body>
</html>