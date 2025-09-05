package survey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import murach.business.User;

@WebServlet("/survey")
public class SurveyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        // Cho ai truy cập /survey bằng GET thì quay về form
        resp.sendRedirect(req.getContextPath() + "/index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        // Đảm bảo đọc form tiếng Việt đúng
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        // Lấy tham số từ form
        String firstName = req.getParameter("firstName");
        String lastName  = req.getParameter("lastName");
        String email     = req.getParameter("email");
        String dob       = req.getParameter("dateOfBirth");
        String aboutus   = req.getParameter("aboutus");

        String[] annArr  = req.getParameterValues("announcements");
        List<String> announcements = (annArr == null) ? Collections.emptyList() : Arrays.asList(annArr);

        String contactPreference = req.getParameter("contactPreference");
        
        User user = new User(firstName, lastName, email, dob, aboutus, announcements, contactPreference);

        // Gán vào attribute
        req.setAttribute("user", user);

        // Forward tới trang cảm ơn
        req.getRequestDispatcher("survey.jsp").forward(req, resp);
    }
}
