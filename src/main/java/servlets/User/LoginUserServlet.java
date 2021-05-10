package servlets.User;

import DTO.User.UserLoginPassToBullets;
import model.User;
import utils.UserUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginUserServlet", value = "/LoginUserServlet")
public class LoginUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("login_email");
        String password = request.getParameter("login_password");

        User user = new User();
        user.setEmail(email);
        user.setPassword(password);

        boolean status = UserUtils.SelectUser(user);

        if (status) {
            HttpSession session = request.getSession();
            session.setAttribute("name", user.getName());
            session.setAttribute("email", user.getEmail());
            session.setAttribute("password",  UserLoginPassToBullets.passwordTxtToBullets(user.getPassword()));
            System.out.println("Success");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/movies.jsp");
            dispatcher.forward(request, response);
        } else {
            System.out.println("waradi");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
