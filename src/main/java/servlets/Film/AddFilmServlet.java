package servlets.Film;

import model.Film;
import utils.FilmUtils;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddFilmServlet", value = "/AddFilmServlet")
public class AddFilmServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fileName = request.getParameter("file_Name");
        String fileSize = request.getParameter("file_Size");
        String filePath = request.getParameter("file_Path");

        Film film = new Film(fileName, fileSize, filePath);

        FilmUtils.addFilm(film);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/browse.jsp");
        dispatcher.forward(request, response);

}
}
