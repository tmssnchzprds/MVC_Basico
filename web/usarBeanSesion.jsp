<%-- 
    Document   : usarBeanSesion
    Created on : 03-feb-2017, 13:40:53
    Author     : jose
--%>
<%@page session="true" %>
<jsp:useBean id="miCliente" scope="session" class="modelo.Cliente" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         Datos del Cliente:
        <br>
        nombre:<b><jsp:getProperty name="miCliente" property="nombre" /></b>
        <br>apellidos:<b><jsp:getProperty name="miCliente" property="apellidos" /></b>
        <br>edad:<b><jsp:getProperty name="miCliente" property="edad" /></b>
        <br>
    </body>
</html>
