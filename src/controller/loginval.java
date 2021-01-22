package controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.IUser;
import dao.UserImpl;
import model.Item;
@WebServlet(name="loginPage",urlPatterns={"/loginval"})
public class loginval extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = (String) request.getParameter("name");
        String password = (String) request.getParameter("pass");
        IUser user=new UserImpl();
        if (user.Authenticate(username, password)) {
            ArrayList<Item> cart = new ArrayList<Item>();
            int totalcost = 0;
            HttpSession mysession = request.getSession();
            mysession.setAttribute("user", username);
            mysession.setAttribute("itemlist", cart);
            mysession.setAttribute("total", totalcost);
            response.sendRedirect("shop.jsp");
        }else{
        response.sendRedirect("error.jsp");
        }
    }
}
