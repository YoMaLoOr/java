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
<link rel="stylesheet" type="text/css" href="${css}/productos.css">
<script type="text/javascript">

    let tabla;

    function solicitud(){
        
        let param = "idFabricante=" + encodeURIComponent(document.getElementById("idFabricante").value);

        let req = new XMLHttpRequest;

        req.open("post", "productos_fabricante_json_respuesta");

        req.addEventListener("readystatechange", 
            function(){
                if(req.readyState == 4 && req.status == 200){
                    cargarTabla(req);
                }
            }
        )
        req.setRequestHeader("content-type", "application/x-www-form-urlencoded");

        req.send(param);
    }

    function cargarTabla(req){
        tabla.innerHTML="";
        let productos = JSON.parse(req.responseText);
        for (let i = 0; i < productos.length; i++) {
            insertarFila(productos[i]);
        }
        document.querySelector("#tabla_datos").style.visibility = "visible";
   }

    function insertarFila(producto){
        let tr = document.createElement("tr");
        let td = document.createElement("td");
        tr.appendChild(td);
        td.textContent = producto.producto;

        td = document.createElement("td");
        tr.appendChild(td);
        td.textContent= producto.precio;

        tabla.appendChild(tr);
    }

    window.onload = function () {
        document.getElementById("idFabricante").addEventListener("change", solicitud);
        tabla = document.querySelector("#tabla_datos tbody");
    }
</script>
<style>
    #tabla_datos{
        visibility: hidden;
    }
</style>
</head>
<body>
	<header class="cabecera">
		<h2>Busqueda de Productos por fabricante</h2>
	</header>
	<div id="contPrincipal">
		<form action="${home}/productos_fabricante" method="post">
			<select id="idFabricante" name="idFabricante">
                    <option value="" hidden="hidden">Seleccione Fabricante</option>
                <c:forEach var="fabricante" items="${fabs}">
                    <option value="${fabricante.idFabricante}">${fabricante.fabricante}</option>
                </c:forEach> 
            </select>
		</form>
        <table id="tabla_datos">
            <thead>
                <tr>
                    <th>Descripcion</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
		<a href="${home}/menu_principal"><button>Volver</button></a>
	</div>
</body>
</html>