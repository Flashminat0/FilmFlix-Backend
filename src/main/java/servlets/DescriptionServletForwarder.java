package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DescriptionServletForwarder", value = "/DescriptionServletForwarder")
public class DescriptionServletForwarder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("desc-mov-id-search-btn") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/SearchDescription");
            dispatcher.forward(request, response);


        } else if (request.getParameter("delete-desc") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/SearchDescription");
            dispatcher.forward(request, response);

        }

    }
}
