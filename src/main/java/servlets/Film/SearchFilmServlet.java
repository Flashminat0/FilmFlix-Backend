package servlets.Film;

import model.Film;
import utils.FilmUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchFilmServlet", value = "/SearchFilmServlet")
public class SearchFilmServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int searchMovieID = Integer.parseInt(request.getParameter("search_Movie_ID"));

        Film film = new Film();
        film.setMovieID(searchMovieID);

        FilmUtils.selectFilm(film);

        request.setAttribute("search_Movie_ID", searchMovieID);
        request.setAttribute("file_Name", film.getFileName());
        request.setAttribute("file_Size", film.getFileSize());
        request.setAttribute("file_Path", film.getFilePath());

        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/movie_uploader.jsp");
        dispatcher.forward(request, response);

    }
}
