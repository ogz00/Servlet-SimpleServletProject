package org.oguz.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleServlet
 * @WebServlet(description = "A simple servlet", urlPatterns = { "/SimpleServlet" },
initParams ={@WebInitParam(name="defaultUser", value="Oguzhan")}
	)
 */


public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SimpleServlet() {
        // TODO Auto-generated constructor stub
    }
 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hello from GET method");
		response.setContentType("text/html");
			response.getWriter().println(">Hello from get method in html");
			response.getWriter().println("<p> Default parameter is : "+this.getServletConfig().getInitParameter("defaultUser")+"</p>");
	}

}
