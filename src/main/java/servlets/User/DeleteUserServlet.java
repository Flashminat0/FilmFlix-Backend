package servlets.User;

import model.User;
import utils.UserUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteUserServlet", value = "/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user-name");
        String email = request.getParameter("user-email");
        String password = request.getParameter("user-password");

        User user = new User();
        user.setName(username);
        user.setEmail(email);
        user.setPassword(password);

        boolean statusDeleteUser = UserUtils.DeleteUser(user);
        if (statusDeleteUser) {
            System.out.println("Success");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
            dispatcher.forward(request, response);
        } else {
            System.out.println("waradi");
        }
    }
}
