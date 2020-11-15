<!DOCTYPE html>
<style>

  label
 {
  display: inline-block;
  width: 80em;
}

</style>


<html lang="es">
    <head>
        <title>Pagina Principal</title>
        <meta charset="UTF-8"/>
    </head>
    <body>

        <form action="proceso.jsp" method="post">
        	<label for="email">Email</label>
            <input type="text" name="email" size="30" required>
            <br>
            <label for="password">Contraseña</label>
            <input type="password" name="password" size="30" required>
     		<br> <br>
            <input type="submit" value="Iniciar sesión">   
          
        </form>
          
    </body>


</html>
