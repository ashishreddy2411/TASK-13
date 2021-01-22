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
@WebServlet(name="ProcessingPage",urlPatterns={"/requesthandler"})
public class requesthandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        HttpSession mysession = request.getSession();
        ArrayList<Item> mycart = (ArrayList<Item>) mysession.getAttribute("itemlist");
        
        int value = (Integer) mysession.getAttribute("total");
        
        
        String i1 = request.getParameter("addtocart1");
        String i2 = request.getParameter("addtocart2");
        String i3 = request.getParameter("addtocart3");
        String i4 = request.getParameter("addtocart4");
        String i5 = request.getParameter("addtocart5");
        String i6 = request.getParameter("addtocart6");
        String i7 = request.getParameter("addtocart7");
        String i8 = request.getParameter("addtocart8");
        String i9 = request.getParameter("addtocart9");
        String i10 = request.getParameter("addtocart10");
        String chk = request.getParameter("chkout");
        String logout = request.getParameter("logout");
        String pressdel = request.getParameter("del");



        if (i1 != null) {
        	Item myitem = new Item("#1", "Sunglass", 2500);
        	value = value + 2500;
        	mycart.add(myitem);
        	mysession.setAttribute("itemlist", mycart);
        	mysession.setAttribute("total", value);
        	response.sendRedirect("shop.jsp");
        } else if (i2 != null) {
        	Item myitem = new Item("#2", "Wrist Watch", 5000);
        	value = value + 5000;
        	mycart.add(myitem);
        	mysession.setAttribute("itemlist", mycart);
        	mysession.setAttribute("total", value);
        	response.sendRedirect("shop.jsp");
        } else if (i3 != null) {
        	Item myitem = new Item("#3", "Camera", 15000);
        	value = value + 15000;
        	mycart.add(myitem);
        	mysession.setAttribute("itemlist", mycart);
        	mysession.setAttribute("total", value);
        	response.sendRedirect("shop.jsp");
        } else if (i4 != null) {
        	Item myitem = new Item("#4", "Shoes", 2000);
        	value = value + 2000;
        	mycart.add(myitem);
        	mysession.setAttribute("itemlist", mycart);
        	mysession.setAttribute("total", value);
        	response.sendRedirect("shop.jsp");
        } else if (i5 != null) {
        	Item myitem = new Item("#5", "iPhone12",75000);
        	value = value + 75000;
        	mycart.add(myitem);
        	mysession.setAttribute("itemlist", mycart);
        	mysession.setAttribute("total", value);
        	response.sendRedirect("shop.jsp");        } 
        else if (i6 != null) {
        	Item myitem = new Item("#6", "MacBook Pro", 220000);
        	value = value + 220000;
        	mycart.add(myitem);
        	mysession.setAttribute("itemlist", mycart);
        	mysession.setAttribute("total", value);
        	response.sendRedirect("shop.jsp");
        }
        	else if (i7 != null) {
        		Item myitem = new Item("#7", "iPad Air", 45000);
        		value = value + 45000;
        		mycart.add(myitem);
        		mysession.setAttribute("itemlist", mycart);
        		mysession.setAttribute("total", value);
        		response.sendRedirect("shop.jsp");
        	}
        	else if (i8 != null) {
        		Item myitem = new Item("#8", "iPad Pro", 65000);
        		value = value + 65000;
        		mycart.add(myitem);
        		mysession.setAttribute("itemlist", mycart);
        		mysession.setAttribute("total", value);
        		response.sendRedirect("shop.jsp"); 
        	}
        	else if (i9 != null) {
        		Item myitem = new Item("#9", "Xbox One X", 55000);
        		value = value + 55000;
        		mycart.add(myitem);
        		mysession.setAttribute("itemlist", mycart);
        		mysession.setAttribute("total", value);
        		response.sendRedirect("shop.jsp");
        	}
        	else if (i10 != null) {
        		Item myitem = new Item("#10", "Play Station V", 50000);
        		value = value + 50000;
        		mycart.add(myitem);
        		mysession.setAttribute("itemlist", mycart);
        		mysession.setAttribute("total", value);
        		response.sendRedirect("shop.jsp");
        } else if (chk != null) {
        	mysession.setAttribute("chk", chk);
        	response.sendRedirect("checkout.jsp");

        } else if (logout != null) {
        	mysession.invalidate();
        	response.sendRedirect("index.jsp");
        } else if (pressdel != null) {

        	Item item_to_Delete = mycart.get(Integer.parseInt(pressdel));
        	value = value - item_to_Delete.price;
        	mysession.setAttribute("total", value);
        	mycart.remove(Integer.parseInt(pressdel));
        	mysession.setAttribute("tod", pressdel);
        	response.sendRedirect("shop.jsp");
        }
    }
}
