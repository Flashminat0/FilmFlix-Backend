package servlets.Description;


import model.Description;
import utils.DescriptionUtils;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "SearchDescriptionServlet", value = "/SearchDescriptionServlet")
public class SearchDescriptionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int search_id_description = Integer.parseInt(request.getParameter("search_id_description"));

        Description description = new Description();
        description.setMovieID(search_id_description);


        String statusSelectMovieName = DescriptionUtils.SelectMovieName(description);
        String statusSelectMovieDescription = DescriptionUtils.SelectMovieDescription(description);


        if (statusSelectMovieDescription != null && statusSelectMovieName != null) {
            System.out.println("Success");
            request.setAttribute("movieID", description.getMovieID());
            request.setAttribute("movieName", description.getMovieName());
            request.setAttribute("movieDescription", description.getMovieDescription());

            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/SearchDescription.jsp");
            dispatcher.forward(request, response);

        } else {
            System.out.println("waradi");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

}
}
