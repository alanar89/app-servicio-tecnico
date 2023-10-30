<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
</head>
<body>
    <h2>Hola, gracias por registrarte en <strong>Ofertas Web</strong> !</h2>
    <p>Por favor confirma tu correo electrónico.</p>
    <p>Para ello simplemente debes hacer click en el siguiente enlace:</p>

  <a href="{{url('/validarMail',[$email, $codigo]) }}">Validar correo</a>
        Clic para confirmar tu email
    </a>
</body>
</html>