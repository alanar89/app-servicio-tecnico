@component('mail::message')
#  <h2>Hola {{$user->name}}, gracias por registrarte en <strong>Ofertas Web</strong> !</h2>

 Por favor confirma tu correo electrónico.<br>
 Solo debes hacer click en el siguiente Botón:

@component('mail::button', ['url' => 'http://localhost/ofertasweb/public/validarMail/'.$user->email])
Verificar Email
@endcomponent

<!-- Graci<br>
{{ config('app.name') }} -->
@endcomponent
