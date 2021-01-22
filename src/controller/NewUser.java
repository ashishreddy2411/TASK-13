package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IUser;
import dao.UserImpl;
import model.User;

@WebServlet("/NewUser")
public class NewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NewUser() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
		String username = (String) request.getParameter("Username");
		 String mobile=(String)request.getParameter("phone");
		 String email=(String)request.getParameter("email");
	     String password = (String) request.getParameter("password");
	     User user=new User(username, mobile, email, password);
	     IUser user_con=new UserImpl();
	     int result=user_con.AddUser(user);
	     if(result!=0)
	     {
	    	 out.println("<h5 style=\"font-size:20px;\">User Successfully Created!</h5>");
	    	 request.getRequestDispatcher("index.jsp").include(request, response);;  
	     }
	     else
	     {
	    	 out.println("<h5 style=\"font-size:20px;\">User Creation Failed!</h5>");
	    	 request.getRequestDispatcher("index.jsp").include(request, response); 
	     }
	}
}
