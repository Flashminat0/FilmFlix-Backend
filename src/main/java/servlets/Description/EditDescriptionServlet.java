package servlets.Description;

import model.Description;
import utils.DescriptionUtils;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditDescriptionServlet", value = "/EditDescriptionServlet")
public class EditDescriptionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieID = Integer.parseInt(request.getParameter("movieID"));
        String movieName = request.getParameter("movieName");
        String movieDescription = request.getParameter("movieDescription");

        Description description = new Description();
        description.setMovieID(movieID);
        description.setMovieName(movieName);
        description.setMovieDescription(movieDescription);

        boolean status = DescriptionUtils.EditDescription(description);
        if (status == true) {
            System.out.println("Success");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/description_adder.jsp");
            dispatcher.forward(request, response);
        } else {
            System.out.println("Check again.");
            RequestDispatcher dispatcher2 = request.getRequestDispatcher("/jsp/description_edit.jsp");
            dispatcher2.forward(request, response);
        }

    }
}
