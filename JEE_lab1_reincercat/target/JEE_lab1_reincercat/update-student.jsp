<html xmlns:jsp="http://java.sun.com/JSP/Page">
<head>
    <title>Formular actualizare student</title>
    <meta charset="UTF-8">
</head>
<body>
<!--
In continuare, veţi crea un formular web ce acceptă câteva date despre un student, le
trimite unui servlet spre „procesare”, iar servlet-ul le încapsulează într-un JavaBean şi le
afişează într-o pagină JSP (stilul Model-View-Controller).
-->
<h3>Formular de actualizare a studentului</h3>
Introduceti datele noi ale studentului:
<form action="./update-student" method="post">
    Nume: <input type="text" name="nume" />
    <br />
    Prenume: <input type="text" name="prenume" />
    <br />
    Varsta: <input type="number" name="varsta" />
    <br />
    <br />
    <button type="submit" name="submit">Actualizeaza</button>
</form>
</body>
</html>