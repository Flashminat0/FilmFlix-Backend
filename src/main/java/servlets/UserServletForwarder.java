package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserServletForwarder", value = "/UserServletForwarder")
public class UserServletForwarder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("user-edit-btn") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/userEdit");
            dispatcher.forward(request, response);
        }
    }
}
