import User.User;
import User.UserList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet",urlPatterns = "/s3")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //LinkedList<User.User> users = User.UserList.getUsers();
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String userpass = request.getParameter("userpass");
        //System.out.println(name + " " + username);
        User newUser = new User(name,username,userpass);
        //users.add(newUser);
        //System.out.println(users.getLast().getUsername());
        UserList.addUser(newUser);
        //System.out.println(User.UserList.getUsers().getLast().getUserpass());
        request.getRequestDispatcher("").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
