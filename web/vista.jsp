<%-- 
    Document   : vista
    Created on : 03-feb-2017, 12:01:54
    Author     : jose
--%>

<%@page import="modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objetoCliente" scope="request" class="modelo.Cliente" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Esta es la vista, esta pagina sera llamada por el controlador(Servlets)</h1>
        <br>
        <%
           Cliente c=(Cliente)request.getAttribute("objetoCliente");
        /*String nombreRecibido=request.getAttribute("parametroparalavista").toString();
        out.println(nombreRecibido);*/
        %>
        <br>
        Datos del Cliente:
        <br>
        nombre:<b><%=c.getNombre()%></b>
        <br>apellidos:<b><%=c.getApellidos()%></b>
        <br>edad:<b><%=c.getEdad()%></b>
        <hr>
        Otra forma de acceder al javaBean:
        <br>
        nombre:<b><jsp:getProperty name="objetoCliente" property="nombre" />
        </b><br>apellidos:<b>
        <jsp:getProperty name="objetoCliente" property="apellidos" />
        </b><br>edad:<b>
        <jsp:getProperty name="objetoCliente" property="edad" />
        </b>
    </body>
</html>
