<%-- 
    Document   : procesaCliente
    Created on : 03-feb-2017, 13:19:24
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
        <%
            /*
        Cliente c=new Cliente();
        c.setNombre(request.getParameter("nombre"));
        c.setApellidos(request.getParameter("apellidos"));
        int edad=Integer .parseInt(request.getParameter("edad"));
        c.setEdad(edad);*/
        %>
        <br>
        <jsp:setProperty name="miCliente" property="*" />
        
        Datos del Cliente:
        <br>
        nombre:<b><jsp:getProperty name="miCliente" property="nombre" /></b>
        <br>apellidos:<b><jsp:getProperty name="miCliente" property="apellidos" /></b>
        <br>edad:<b><jsp:getProperty name="miCliente" property="edad" /></b>
        <br>
        <a href="usarBeanSesion.jsp">Usar Sesion</a>
    </body>
</html>
