package servlets.Banner;

import model.Banner;
import utils.BannerUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchBannerServlet", value = "/SearchBannerServlet")
public class SearchBannerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int neededBanner = Integer.parseInt(request.getParameter("search_movie_id_banner"));

        Banner banner = new Banner();
        banner.setMovieid(neededBanner);

        boolean statusSelectBanner = BannerUtils.SelectBanner(banner);

        if (statusSelectBanner) {
            System.out.println("Success");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/movies.jsp");
            dispatcher.forward(request, response);
        } else {
            System.out.println("waradi");
        }
    }
        @Override
        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {

        }
    }
