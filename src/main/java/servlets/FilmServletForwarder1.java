package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FilmServletForwarder1", value = "/FilmServletForwarder1")
public class FilmServletForwarder1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("submit-btn") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/AddFilm");
            dispatcher.forward(request, response);


        } else if (request.getParameter("update-btn") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/UpdateFilm");
            dispatcher.forward(request, response);

        }
    }
}
