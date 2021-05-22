package servlets.Description;

import model.Banner;
import model.Description;
import model.Movie;
import utils.BannerUtils;
import utils.DescriptionUtils;
import utils.MovieUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteDescriptionServlet", value = "/DeleteDescriptionServlet")
public class DeleteDescriptionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        {
            int movieID = Integer.parseInt(request.getParameter("movieID"));
            String movieName = request.getParameter("movieName");
            String movieDescription = request.getParameter("movieDescription");


            Description description = new Description();
            description.setMovieID(movieID);
            description.setMovieName(movieName);
            description.setMovieDescription(movieDescription);



            boolean statusAddMovieID = DescriptionUtils.DeleteDescription(description);
            boolean statusAddMovieName = DescriptionUtils.DeleteDescription(description);
            boolean statusAddMovieDescription = DescriptionUtils.DeleteDescription(description);
            if (statusAddMovieID && statusAddMovieName && statusAddMovieDescription) {
                System.out.println("Success");
                RequestDispatcher dispatcher1 = request.getRequestDispatcher("/jsp/description_edit.jsp");
                dispatcher1.forward(request, response);
            } else {
                System.out.println("waradi");
            }


        }

    }
}
