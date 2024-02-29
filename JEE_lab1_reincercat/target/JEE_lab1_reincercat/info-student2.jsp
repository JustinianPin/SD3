<html xmlns:jsp="http://java.sun.com/JSP/Page">
<head>
    <title>Informatii student ACTUALIZATE</title>
</head>
<body>
<h3>Informatii student ACTUALIZATE</h3>


<!-- populare bean cu informatii din cererea HTTP -->
<jsp:useBean id="studentBean" class="beans.StudentBean" />
<jsp:setProperty name="studentBean" property="nume" value='<%=
        request.getAttribute("nume") %>'/>
<jsp:setProperty name="studentBean" property="prenume" value='<%=
        request.getAttribute("prenume") %>'/>
<jsp:setProperty name="studentBean" property="varsta" value='<%=
        request.getAttribute("varsta") %>'/>

<!-- folosirea bean-ului pentru afisarea informatiilor -->
<p>Urmatoarele informatii au fost ACTUALIZATE:</p>
<ul type="bullet">
    <li>Nume: <jsp:getProperty name="studentBean"
                               property="nume" /></li>
    <li>Prenume: <jsp:getProperty name="studentBean"
                                  property="prenume" /></li>
    <li>Varsta: <jsp:getProperty name="studentBean"
                                 property="varsta" /></li>

</ul>
</body>
</html>