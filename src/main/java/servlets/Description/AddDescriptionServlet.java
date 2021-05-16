package servlets.Description;

import model.Description;
import utils.DescriptionUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddDescriptionServlet", value = "/AddDescriptionServlet")
public class AddDescriptionServlet extends HttpServlet {
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

        boolean addDescriptionStatus;
        addDescriptionStatus = DescriptionUtils.AddDescription(description);


        if(addDescriptionStatus == true) {
            System.out.println("Success");
            RequestDispatcher ds = request.getRequestDispatcher("/jsp/browse.jsp");
            ds.forward(request,response);
        }
        else {
            System.out.println("Please Check again");
            RequestDispatcher ds2 = request.getRequestDispatcher("/jsp/description_adder.jsp");
            ds2.forward(request,response);

        }




    }
}
