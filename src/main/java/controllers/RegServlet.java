package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileWriter;
import java.io.IOException;

@WebServlet(name = "RegServlet")
public class RegServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        FileWriter fw = new FileWriter("users.txt");
        String name = request.getParameter("user");
        String pass = request.getParameter("pass");

        if(name.contains("@") && pass.length() > 3){
            fw.write(name + " " + pass);
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }
        request.getRequestDispatcher("/startPage.html");
    }

}
