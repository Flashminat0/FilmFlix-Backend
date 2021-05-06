package servlets;

import model.Movie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddMovieName", value = "/AddMovieName")
public class AddMovieName extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieid;
        String moviename;

        movieid = Integer.parseInt(request.getParameter("movieid"));
        moviename = request.getParameter("moviename");

        Movie movie = new Movie();
        movie.setMovieid(movieid);
        movie.setMoviename(moviename);

        boolean status = utils.MovieNameUtils.AddMovieName(movie);

    }
}
