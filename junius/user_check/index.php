<!DOCTYPE html>
<html lang="hu">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>User check</title>
    </head>
    <body>
        <h1>Jelentkezz be!</h1>
        <form method="post" action="login.php">
            <input type="text" placeholder="Felhasználónév" name="user" id="user">
            <br>
            <input type="password" name="pwd" placeholder="Jelszó" id="pwd">
            <br>
            <input type="submit" value="Belépés">
            <?php
            echo '<h1>Szia!</h1>';
            // szerveroldal fut le először
            // és szekvenciálisan ... sorról sorra ...
            ?>
            <!-- Ekvivalens a felső sorral -->
            <?='<h1>Szia!</h1>';
            // szerveroldal fut le először
            // és szekvenciálisan ... sorról sorra ...
            ?>
        </form>
    </body>
</html>
<?php echo '<h1>Weblap alja</h1>'; ?>
<?= '<h1>Weblap alja</h1>'; ?> // ez ekvivalens a felsővel
