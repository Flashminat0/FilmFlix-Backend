package servlets.Film;

import model.Film;
import utils.FilmUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateFilmServlet", value = "/UpdateFilmServlet")
public class UpdateFilmServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int searchMovieID = Integer.parseInt(request.getParameter("search_Movie_ID"));

        String fileName = request.getParameter("file_Name");
        String fileSize = request.getParameter("file_Size");
        String filePath = request.getParameter("file_Path");

        Film film = new Film();
        film.setMovieID(searchMovieID);
        film.setFileName(fileName);
        film.setFileSize(fileSize);
        film.setFilePath(filePath);


        FilmUtils.updateFilm(film);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/browse.jsp");
        dispatcher.forward(request, response);

    }
}
