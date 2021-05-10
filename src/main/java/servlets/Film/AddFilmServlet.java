package servlets.Film;

import model.Film;
import utils.FilmUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddFilmServlet", value = "/AddFilmServlet")
public class AddFilmServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        int movieID = Integer.parseInt(request.getParameter("movie_ID"));
        String fileName = request.getParameter("file_Name");
        String filePath = request.getParameter("file_Path");

        Film f = new Film();
        f.setMovieID(movieID);
        f.setFileName(fileName);
        f.setFilePath(filePath);

        boolean addFilmStatus;
        addFilmStatus = FilmUtils.addFilm(f);

        if(addFilmStatus == true) {
            System.out.println("Success");
            RequestDispatcher rd = request.getRequestDispatcher("/jsp/movies.jsp");
            rd.forward(request,response);
        }
        else {
            System.out.println("Unsuccess. Check again");
        }


    }
}
