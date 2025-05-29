<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Producto" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Resultado de Compra</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .resultado { max-width: 500px; margin: 0 auto; padding: 20px; border: 1px solid #ddd; border-radius: 5px; }
        .error { color: red; }
        .success { color: green; }
    </style>
</head>
<body>
    <div class="resultado">
        <h1>Resultado de Compra</h1>
        
        <%
            String nombre = request.getParameter("nombre");
            String precioStr = request.getParameter("precio");
            String cantidadStr = request.getParameter("cantidad");
            
            try {
                double precio = Double.parseDouble(precioStr);
                int cantidad = Integer.parseInt(cantidadStr);
                
                Producto producto = new Producto(nombre, precio, cantidad);
                
                if (!producto.cantidadValida()) {
        %>
                    <p class="error">Lo siento, ingrese una cantidad positiva.</p>
        <%
                } else {
                    double total = producto.calcularTotal();
        %>
                    <p><strong>Producto:</strong> <%= producto.getNombre() %></p>
                    <p><strong>Precio unitario:</strong> S/.<%= String.format("%.2f", producto.getPrecio()) %></p>
                    <p><strong>Cantidad:</strong> <%= producto.getCantidad() %></p>
                    <p class="success"><strong>Total a pagar:</strong> S/.<%= String.format("%.2f", total) %></p>
        <%
                }
            } catch (NumberFormatException e) {
        %>
                <p class="error">Error: Por favor ingrese valores numéricos válidos.</p>
        <%
            }
        %>
        
        <a href="index.jsp">Volver a la página principal</a>
    </div>
</body>
</html>