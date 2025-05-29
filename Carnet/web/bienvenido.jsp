<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Bienvenido</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .welcome-box {
            background: rgba(255, 255, 255, 0.15);
            padding: 40px 60px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
            max-width: 450px;
        }
        .welcome-box h1 {
            font-size: 3rem;
            margin-bottom: 10px;
            text-shadow: 2px 2px 6px rgba(0,0,0,0.3);
        }
        .welcome-box p {
            font-size: 1.2rem;
            margin-bottom: 25px;
            font-weight: 600;
            text-shadow: 1px 1px 4px rgba(0,0,0,0.25);
        }
        .welcome-box .logout-btn {
            background-color: #ff4757;
            border: none;
            color: white;
            padding: 12px 30px;
            font-size: 1rem;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }
        .welcome-box .logout-btn:hover {
            background-color: #e84118;
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h1>¡Bienvenido, Admin!</h1>
        <p>Has iniciado sesión exitosamente.</p>
        <a href="login.jsp" class="logout-btn">Cerrar sesión</a>
    </div>
</body>
</html>
