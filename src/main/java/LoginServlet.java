import User.User;
import User.UserList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.time.LocalTime;
import java.util.LinkedList;

@WebServlet(name = "LoginServlet", urlPatterns = "/s1")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username, userpass;
        username = request.getParameter("username");
        userpass = request.getParameter("userpass");

        LinkedList<User> users = UserList.getUsers();

        //System.out.println(users.getFirst().getUsername());

        /*for (User.User user :
                users) {
            System.out.println(user.getUsername());
        }*/

        for (User user :
                users) {
            if (user.getUsername().equals(username) && user.getUserpass().equals(userpass)) {
                HttpSession session = request.getSession();
                user.addVisit();
                session.setAttribute("user", user);
                session.setAttribute("start",LocalTime.now());
                request.getRequestDispatcher("/menu.jsp").forward(request, response);
            }
        }
        request.setAttribute("error", "Incorrect Username or Password!");
        request.getRequestDispatcher("/").forward(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
