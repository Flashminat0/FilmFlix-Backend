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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String movieID = request.getParameter("mov_id");
        String fileName = request.getParameter("file_Name");
        String fileSize = request.getParameter("file_Size");
        String filePath = request.getParameter("file_Path");

        Film film = new Film();
        film.setMovieID(Integer.parseInt(movieID));
        film.setFileName(fileName);
        film.setFileSize(fileSize);
        film.setFilePath(filePath);

        FilmUtils.addFilm(film);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/movie_uploader.jsp");
        dispatcher.forward(request, response);

}
}
