package servlets.Banner;

import model.Banner;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Vector;

@WebServlet(name = "RandomizeBannersServlet", value = "/RandomizeBannersServlet")
public class RandomizeBannersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Vector<Banner> newBannerListForBrowse = new Vector<Banner>();
        for (int i = 0; i < 5; i++) {
            newBannerListForBrowse.add(new Banner());
        }
        boolean status = utils.BannerUtils.SelectRandom(newBannerListForBrowse);

        if (status) {
            for (int i = 0; i < 5; i++) {
                Banner newBanner = newBannerListForBrowse.get(i);
                if (newBanner.getMovieid() > 0) {
                    utils.BannerUtils.SelectBanner(newBanner);
                    request.setAttribute("BannerImage" + (i + 1), "../img/banner/" + newBanner.getBannerlocation());
                }
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/browse.jsp");
            dispatcher.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
