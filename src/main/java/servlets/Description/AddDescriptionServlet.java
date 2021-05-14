package servlets.Description;

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
        int MovieID = Integer.parseInt("movieID");
        String movieName = request.getParameter("movieName");
        String movieDescription = request.getParameter("movieDescription");

    }
}
