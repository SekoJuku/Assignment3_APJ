package Cart;

import Cart.Cart;
import Item.Item;
import Item.ItemSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddToCartServlet", urlPatterns = "/s6")
public class AddToCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] s = request.getParameterValues("itemname");
        for (String a :
                s) {
            Item item = ItemSet.findItem(a);
            if (item == null) {
                request.setAttribute("error","Something is odd!");
                if(item!=null)
                    System.out.println(item.getName());
                request.getRequestDispatcher("/menu.jsp").forward(request,response);
            }
            else {
                ItemSet.deleteItem(item);
                Cart.addItem(item);
                request.getRequestDispatcher("/menu.jsp").forward(request,response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
