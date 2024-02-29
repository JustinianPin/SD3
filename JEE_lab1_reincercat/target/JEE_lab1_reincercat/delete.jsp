<html xmlns:jsp="http://java.sun.com/JSP/Page">
<head>
    <title>Buton de stergere a studentului</title>
    <meta charset="UTF-8">
</head>
<body>
<!--
In continuare, veţi crea un formular web ce acceptă câteva date despre un student, le
trimite unui servlet spre „procesare”, iar servlet-ul le încapsulează într-un JavaBean şi le
afişează într-o pagină JSP (stilul Model-View-Controller).
-->
<h3>Formular student</h3>
Introduceti datele despre student:
<form action="./delete-student" method="post">
    Nume: <input type="text" name="nume" />
    <br />
    Prenume: <input type="text" name="prenume" />
    <br />
    Varsta: <input type="number" name="varsta" />
    <br />
    <!-- camp ascuns pentru a specifica
     metoda reala de STERGERE a cererii -->
    <input type="hidden" name="_method" value="DELETE" />

    <br />
    <button type="submit" name="submit">Sterge student</button>
</form>
</body>
</html>