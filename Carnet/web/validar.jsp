<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ page import="java.util.Vector" %>

<%
    String usuario = request.getParameter("usuario");
    String clave = request.getParameter("clave");

    String correctoUsuario = "admin";
    String correctoClave = "1234";

    if (usuario == null || clave == null || usuario.isEmpty() || clave.isEmpty()) {
        throw new Exception("Usuario o clave vacíos");
    }

    if (!usuario.equals(correctoUsuario) || !clave.equals(correctoClave)) {
        Vector<String> errores = new Vector<>();
        errores.add("Usuario o contraseña incorrectos.");
        errores.add("Por favor, intenta de nuevo.");
        request.setAttribute("mensajes", errores);
        throw new Exception("Intento de acceso no autorizado");
    }
%>

<h2>Bienvenido, <%= usuario %></h2>
<p>Has ingresado correctamente.</p>
