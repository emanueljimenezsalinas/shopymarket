<%-- 
    Document   : moduloCliente
    Created on : 25-abr-2017, 20:16:09
    Author     : Israel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/css1.css">
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function abrirVentanaUbicaciones(){
                $(".ventanaUbicaciones").slideDown("fast");
            }
            
            function cerrarVentanaUbicaciones(){
                $(".ventanaUbicaciones").slideUp("fast");
            }
            
            function abrirVentanaEliminarCuenta(){
                $(".ventanaEliminarCuenta").slideDown("fast");
            }
            
            function cerrarVentanaEliminarCuenta(){
                $(".ventanaEliminarCuenta").slideUp("fast");
            }
            
            function abrirVentanaEditarInformacion(){
                $(".ventanaEditarInformacion").slideDown("fast");
            }
            
            function cerrarVentanaEditarInformacion(){
                $(".ventanaEditarInformacion").slideUp("fast");
            }
            
        </script>
        <title>Bienvenido</title>
        <header id="main-header">
             <a id="logo-header" >
                <span class="site-name">ShopyMarket</span>
		<span class="site-desc">Tu Mercado Cerquitica</span>
            </a>
        
             <nav>
		<ul>
                    <li><a href="#">Agregar Producto</a></li>
                    <li><a href="javascript:abrirVentanaUbicaciones();">Agregar Ubicacion</a></li>
                    <li><a href="javascript:abrirVentanaEditarInformacion();">Editar mi Informacion</a></li>
                    <li><a href="javascript:abrirVentanaEliminarCuenta()">Eliminar mi cuenta</a></li>
		</ul>
            </nav>
            
        </header>
    </head>
    <body>
        <h1>Le damos la bienvenida a <bean:write name="cliente" property="nombreEmpresa"/>
            a nuestra plataforma
        </h1>
        <div class="ventanaUbicaciones">
            <div class="form">
                <div class="cerrar"><a href="javascript:cerrarVentanaUbicaciones();">X</a></div>
                <h1>Nueva ubicacion</h1>
                <hr>
                <form>
                    <table>
                        <tr>
                            <td>Canton</td>
                            <td><input type="text" name="canton" ></td>
                        </tr>
                          <tr>
                            <td>Ubicacion</td>
                            <td><input type="text" name="ubicacion" ></td>
                        </tr>
                         <tr>
                             <td><input type="submit" value="Agregar" ></td>
                        </tr>
                    </table>
                  
                </form>

            </div>
        </div>
        
        <div class="ventanaEliminarCuenta">
            <div class="form">
                <div class="cerrar"><a href="javascript:cerrarVentanaEliminarCuenta();">X</a></div>
                <h1>Eliminar su cuenta?</h1>
                <hr>
                <form method="get" action="./cliente.do">
                    <table>
                        <tr>
                            <td><input type="hidden" name="metodo" value="eliminarCliente" ></td>
                            <td><input type="hidden" name="idEmpresa" value="<bean:write name="cliente" property="id"/>" ></td>
                        </tr>
                         <tr>
                             <td><input type="submit" value="Si" ></td>
                        </tr>
                    </table>
                  
                </form>
                <button onclick="javascript:cerrarVentanaEliminarCuenta();">No</button>
            </div>
            
        </div>
        
         <div class="ventanaEditarInformacion">
            <div class="form">
                <div class="cerrar"><a href="javascript:cerrarVentanaEditarInformacion();">X</a></div>
                <h1>Modifique sus datos aqui</h1>
                <hr>
                <form method="get" action="./cliente.do">
                    <table>
                        <tr>
                            <td><input type="hidden" name="metodo" value="actualizarCliente" ></td>
                            <td><input type="hidden" name="idEmpresa" value="<bean:write name="cliente" property="id"/>"></td>
                        </tr>
                         <tr>
                             <td>Nombre de la Empresa</td>
                             <td><input type="text" name="nombre" value="<bean:write name="cliente" property="nombreEmpresa"/>"></td>
                        </tr>
                         <tr>
                             <td>Email</td>
                             <td><input type="text" name="email" value="<bean:write name="cliente" property="email"/>"></td>
                        </tr>
                         <tr>
                             <td>Telefono</td>
                             <td><input type="text" name="telefono" value="<bean:write name="cliente" property="telefono"/>"></td>
                        </tr>
                         <tr>
                             <td><br><br><br><input type="submit" value="Listo" ></td>
                        </tr>
                    </table>
                  
                </form>
                <button onclick="javascript:cerrarVentanaEditarInformacion();">cancelar</button>
            </div>
            
        </div>
        
        
        
    </body>
</html>
