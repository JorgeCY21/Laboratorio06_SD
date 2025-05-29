<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>
    <h1>Ha ocurrido un error</h1>
    
    <p><strong>Mensaje:</strong> 
        <%= request.getAttribute("mensaje") != null ? request.getAttribute("mensaje") : exception != null ? exception.getMessage() : "Error desconocido" %>
    </p>

    <p><a href="login.jsp">Volver al login</a></p>
</body>
</html>

