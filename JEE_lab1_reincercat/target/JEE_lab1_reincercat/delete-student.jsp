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
<h3>Buton de stergere a studentului</h3>
Se vor sterge datele din student.xml!


<!-- Ipoteza 1: gresita!  PAGINA, NU MAPAREA !, ca e pt buton aici
    Ip 2. N-a mers. DECI: vrreau sa afiseze rezultatul, adica pagina info-student.
    Ii pun maparea: /read-student !
    (asta va "apela" ReadStudentServlet si va face ce e acolo, unde
    "intamplator" se afiseaza info-student.jsp (ceea ce se poate face si  din alti servleti,
    dar fac si actiune atunci.
    3. Punem MAPAREA ./delete-student => apeleaza DeleteStudentServer si
    trimite datele IN BEAN. de acolo le ia info.jsp
    ATENTIE LA PUNCT ./delete-student
    --->
<form action="./delete-student" method="post">
    <!-- Nume: <input type="text" name="nume" />
    <br />
    Prenume: <input type="text" name="prenume" />
    <br />
    Varsta: <input type="number" name="varsta" />
    <br /> -->
    <!-- camp ascuns pentru a specifica
     metoda reala de STERGERE a cererii -->
    <input type="hidden" name="_method" value="DELETE" />

    <br />
    <button type="submit" name="submit">Sterge student</button>
</form>
</body>
</html>