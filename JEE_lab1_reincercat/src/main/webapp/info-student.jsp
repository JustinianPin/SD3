<html xmlns:jsp="http://java.sun.com/JSP/Page">
    <head>
        <title>Informatii student</title>
    </head>
    <body>
        <h3>Informatii student</h3>

        <!-- populare bean cu informatii din cererea HTTP -->
        <!--
            Deci pe astea le populeaza DIN procesStudentServlet! (care, la randul lui le proceseaza din formular.jsp)
        -->
        <jsp:useBean id="studentBean" class="beans.StudentBean" />
        <jsp:setProperty name="studentBean" property="nume" value='<%=
        request.getAttribute("nume") %>'/>
        <jsp:setProperty name="studentBean" property="prenume" value='<%=
        request.getAttribute("prenume") %>'/>
        <jsp:setProperty name="studentBean" property="varsta" value='<%=
        request.getAttribute("varsta") %>'/>

        <!-- folosirea bean-ului pentru afisarea informatiilor -->
        <!--
            iar asta e ce afiseaza din info-student: MAI EXACT DIN ./process-student-->
        <p>Urmatoarele informatii au fost introduse:</p>
        <ul type="bullet">
            <li>Nume: <jsp:getProperty name="studentBean"
                                       property="nume" /></li>
            <li>Prenume: <jsp:getProperty name="studentBean"
                                          property="prenume" /></li>
            <li>Varsta: <jsp:getProperty name="studentBean"
                                         property="varsta" /></li>

            <!-- anul nasterii nu face parte din bean, il afisam separat (daca
exista) -->
            <li>Anul nasterii: <%
                Object anNastere = request.getAttribute("anNastere");
                // anNastere = 2024 - request.getAttribute("varsta");
                if (anNastere != null) {
                    out.print(anNastere);
                } else {
                    out.print("necunoscut");
                }
            %></li>
        </ul>
<!--
        <p>Mergi la pagina de actualizare :) </p>
        <form action="./udate-student" method="post">
            <button type="submit" name="submit">Actualizare</button>
        </form>

        <p>Sau poti sa mergi la pagina de stergere :( </p>
        <form action="./delete-student" method="post">
            <button type="submit" name="submit">Stergere</button>
        </form>
-->

    </body>
</html>