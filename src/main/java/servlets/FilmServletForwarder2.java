package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FilmServletForwarder", value = "/FilmServletForwarder")
public class FilmServletForwarder2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("search-btn") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/SearchFilm");
            dispatcher.forward(request, response);


        } else if (request.getParameter("delete-btn") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/DeleteFilm");
            dispatcher.forward(request, response);

        }

    }
}
