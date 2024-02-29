import beans.StudentBean;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.time.Year;

public class DeleteStudentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {



        // initializare serializator Jackson
        XmlMapper mapper = new XmlMapper();
// creare bean si populare cu date
        StudentBean bean = new StudentBean();
        bean.setNume(null);
        bean.setPrenume(null);
        bean.setVarsta(0);
        int anNastere = 0;
        request.setAttribute("anNastere", anNastere);

        // serializare bean sub forma de string XML
        mapper.writeValue(new File("/home/justinian/JEE_lab1_reincercat/student.xml"), bean);

        // se trimit datele primite catre o alta pagina JSP pentru afisare
        request.getRequestDispatcher("./index.jsp").forward(request, response);

    }
}
