<%-- 
    Document   : registrarCliente
    Created on : 15-abr-2017, 10:09:14
    Author     : Israel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="miestilo.css">
        <title>registro</title>
    </head>
    <body>
        <form id="formulario" method="get" action="./cliente.do">
            <input type="hidden" value="setCliente" name="metodo">
           Nombre de la empresa:<br>
           <input type="text" name="nombre" required><br>
           numero telefonico:<br>
           <input type="text" name="telefono" required><br>
           email:<br>
           <input type="text" name="email" required><br>
           contraseña:<br>
           <input type="password" name="pass">
           <input type="submit" value="inscribir" ><br>
       </form>
    </body>
</html>
