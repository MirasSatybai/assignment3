package controllers;

import model.Admin;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Scanner;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        //admin have username "admin"
        if (username == "Admin"){
            User admin = new Admin(username, password);
        }

        User user = new User(username, password);
        if (areCorrectCredentials(user.getUsername(), user.getPassword())) {
            request.setAttribute("user", user);
            //creating session
            HttpSession session = request.getSession(true);
            session.setAttribute("currentSessionUser",user);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else {
            response.getWriter().println("Incorrect login or password! Please, try again");
        }
    }
    private boolean areCorrectCredentials(String username, String password) {
        boolean corresponds = false;
        String tempUsername;
        String tempPassword;
        try {
            final Scanner sc = new Scanner(new File("webapp/users.txt"));
            sc.useDelimiter("[:\n]");
            while (sc.hasNext() && !corresponds) {
                //taking data from file
                tempUsername = sc.next();
                tempPassword = sc.next();
                if (username.trim().equals(tempUsername.trim()) && password.trim().equals(tempPassword.trim())) {
                    corresponds = true;
                }
            }
            sc.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return corresponds;
    }

}
