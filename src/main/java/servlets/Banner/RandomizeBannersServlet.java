package servlets.Banner;

import model.Banner;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RandomizeBannersServlet", value = "/RandomizeBannersServlet")
public class RandomizeBannersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Banner banner1 = new Banner();
        Banner banner2 = new Banner();
        Banner banner3 = new Banner();
        Banner banner4 = new Banner();
        Banner banner5 = new Banner();

        utils.BannerUtils.SelectRandom(banner1);
        utils.BannerUtils.SelectRandom(banner2);
        utils.BannerUtils.SelectRandom(banner3);
        utils.BannerUtils.SelectRandom(banner4);
        utils.BannerUtils.SelectRandom(banner5);

        utils.BannerUtils.SelectBanner(banner1);
        utils.BannerUtils.SelectBanner(banner2);
        utils.BannerUtils.SelectBanner(banner3);
        utils.BannerUtils.SelectBanner(banner4);
        utils.BannerUtils.SelectBanner(banner5);

        request.setAttribute("Banner1", "../img/banner/" + banner1.getBannerlocation());
        request.setAttribute("Banner2", "../img/banner/" + banner2.getBannerlocation());
        request.setAttribute("Banner3", "../img/banner/" + banner3.getBannerlocation());
        request.setAttribute("Banner4", "../img/banner/" + banner4.getBannerlocation());
        request.setAttribute("Banner5", "../img/banner/" + banner5.getBannerlocation());

        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/browse.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Banner banner1 = new Banner();
        Banner banner2 = new Banner();
        Banner banner3 = new Banner();
        Banner banner4 = new Banner();
        Banner banner5 = new Banner();

        utils.BannerUtils.SelectRandom(banner1);
        utils.BannerUtils.SelectRandom(banner2);
        utils.BannerUtils.SelectRandom(banner3);
        utils.BannerUtils.SelectRandom(banner4);
        utils.BannerUtils.SelectRandom(banner5);

        utils.BannerUtils.SelectBanner(banner1);
        utils.BannerUtils.SelectBanner(banner2);
        utils.BannerUtils.SelectBanner(banner3);
        utils.BannerUtils.SelectBanner(banner4);
        utils.BannerUtils.SelectBanner(banner5);

        request.setAttribute("Banner1", "../img/banner/" + banner1.getBannerlocation());
        request.setAttribute("Banner2", "../img/banner/" + banner2.getBannerlocation());
        request.setAttribute("Banner3", "../img/banner/" + banner3.getBannerlocation());
        request.setAttribute("Banner4", "../img/banner/" + banner4.getBannerlocation());
        request.setAttribute("Banner5", "../img/banner/" + banner5.getBannerlocation());

        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/browse.jsp");
        dispatcher.forward(request, response);
    }
}
