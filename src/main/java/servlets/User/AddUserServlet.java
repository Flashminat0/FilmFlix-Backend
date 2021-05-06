package servlets.User;

import model.User;
import utils.UserUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddUserServlet", value = "/AddUserServlet")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("signup_name");
        String email = request.getParameter("signup_email");
        String password = request.getParameter("signup_password");

        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);

        boolean status = UserUtils.AddUser(user);
        if (status) {
            System.out.println("Success");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/movies.jsp");
            dispatcher.forward(request, response);
        } else {
            System.out.println("waradi");
        }

    }
}
