package servlets;

import model.Banner;
import utils.BannerUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddBannerLocation", value = "/AddBannerLocation")
public class AddBannerLocation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieid;
        String bannerlocation;
//        String moviename;

        movieid = Integer.parseInt(request.getParameter("movieid"));
        bannerlocation = request.getParameter("bannerlocation");
//        moviename = request.getParameter("moviename");

        Banner banner = new Banner();
        banner.setMovieid(movieid);
        banner.setBannerlocation(bannerlocation);
//        banner.setMoviename(moviename);

        boolean status = BannerUtils.AddBanner(banner);
        if (status) {
            System.out.println("Sucess");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/movies.jsp");
            dispatcher.forward(request, response);
        } else {
            System.out.println("waradi");
        }

    }
}
