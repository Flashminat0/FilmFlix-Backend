package servlets.Banner;

import model.Banner;
import model.Movie;
import utils.BannerUtils;
import utils.MovieUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddBannerServlet", value = "/AddBannerServlet")
public class AddBannerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieid = Integer.parseInt(request.getParameter("movieid"));
        String bannerlocation = request.getParameter("bannerlocation");
        String moviename = request.getParameter("moviename");


        Banner banner = new Banner();
        banner.setMovieid(movieid);
        banner.setBannerlocation(bannerlocation);

        Movie movie = new Movie();
        movie.setMovieid(movieid);
        movie.setMoviename(moviename);

        boolean statusAddBanner = BannerUtils.AddBanner(banner);
        boolean statusAddMovie = MovieUtils.AddMovie(movie);

        if (statusAddBanner && statusAddMovie) {
            System.out.println("Success");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/browse.jsp");
            dispatcher.forward(request, response);
        } else {
            System.out.println("waradi");
        }
    }
}
