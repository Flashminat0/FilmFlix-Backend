package servlets;

import model.Banner;
import model.Movie;
import utils.BannerUtils;
import utils.MovieUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BannerServletCUD", value = "/BannerServletCUD")
public class BannerServletForwarder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        if (request.getParameter("create-btn") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/CreateBanner");
            dispatcher.forward(request, response);


        } else if (request.getParameter("edit-btn") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/EditBanner");
            dispatcher.forward(request, response);

        } else if (request.getParameter("delete-btn") != null) {

        }


    }
}
