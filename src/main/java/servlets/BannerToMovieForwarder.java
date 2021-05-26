package servlets;

import model.Film;
import model.Movie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BannerToMovieForwarder", value = "/BannerToMovieForwarder")
public class BannerToMovieForwarder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int MovieID = Integer.parseInt(request.getParameter("movieId"));

        Film bufferingMovie = new Film();
        bufferingMovie.setMovieID(MovieID);

        utils.FilmUtils.selectFilm(bufferingMovie);

        request.setAttribute("bufferThis" , bufferingMovie.getFilePath());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/movies.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
