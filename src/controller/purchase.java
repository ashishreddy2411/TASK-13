package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Item;
@WebServlet(name="PaymentPage",urlPatterns={"/purchase"})
public class purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ArrayList<Item> newlist = new ArrayList<Item>();
        int newval = 0;
        
        HttpSession mysession = request.getSession();
        mysession.setAttribute("purch", "true");
        mysession.setAttribute("itemlist", newlist);
        mysession.setAttribute("total", newval);
        response.sendRedirect("success.jsp");
    }
}
