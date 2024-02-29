import beans.StudentBean;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.time.Year;

public class ReadStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        // deserializare student din fisierul XML de pe disc
        File file = new File("/home/justinian/JEE_lab1_reincercat/student.xml");

        // se returneaza un raspuns HTTP de tip 404 in cazul in carenu se gaseste fisierul cu date
        if (!file.exists()) {
            response.sendError(404, "Nu a fost gasit niciun student  serializat pe disc!");
            return;
        }
        XmlMapper xmlMapper = new XmlMapper();
        StudentBean bean = xmlMapper.readValue(file,
                StudentBean.class);
        request.setAttribute("nume", bean.getNume());
        request.setAttribute("prenume", bean.getPrenume());
        request.setAttribute("varsta", bean.getVarsta());
        // asta am adaugat
        int anCurent = Year.now().getValue();
        int anNastere = anCurent - bean.getVarsta();
        if(anNastere == 2024)
            anNastere = 0;
        request.setAttribute("anNastere", anNastere);

// redirectionare date catre pagina de afisare a informatiilor studentului
        request.getRequestDispatcher("./info-student.jsp").forward(request, response);
    }
}
