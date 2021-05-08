package servlets.Banner;

import model.Banner;
import model.Movie;
import utils.BannerUtils;
import utils.MovieUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchBannerServlet", value = "/SearchBannerServlet")
public class SearchBannerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int search_id_movie_banner = Integer.parseInt(request.getParameter("search_movie_id_banner"));

        Banner banner = new Banner();
        banner.setMovieid(search_id_movie_banner);

        Movie movie = new Movie();
        movie.setMovieid(search_id_movie_banner);

        String statusSelectBanner = BannerUtils.SelectBanner(banner);
        String movieName = MovieUtils.SelectMovie(movie);

        if (statusSelectBanner != null && movieName != null) {
            System.out.println("Success");
            request.setAttribute("movieid", banner.getMovieid());
            request.setAttribute("moviename", movie.getMoviename());
            request.setAttribute("bannerlocation", banner.getBannerlocation());

            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/movie-banner-uploader.jsp");
            dispatcher.forward(request, response);

        } else {
            System.out.println("waradi");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }
}
