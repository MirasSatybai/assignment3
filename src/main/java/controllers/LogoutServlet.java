package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LogoutServlet")
public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie cookie = null;
        Cookie[] cookies = null;
        cookies = request.getCookies();
        //deleting cookies
        if( cookies != null ) {
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                if ((cookie.getName()).compareTo("carName") == 0) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                    request.getRequestDispatcher("startPage.html").forward(request,response);
                }
            }
        } else {
            request.getRequestDispatcher("startPage.html").forward(request,response);
        }
    }
}
