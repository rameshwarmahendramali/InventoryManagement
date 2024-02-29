package com.r3sys.imt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangePass
 */
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String email = request.getParameter("email");
	    String newPassword = request.getParameter("password");
	    
 
	    try {
		    Connection con = DBConnect.connect();
	        String query = "UPDATE manager SET password = ? WHERE email = ?";
		    PreparedStatement pstmt = con.prepareStatement(query);
		    pstmt.setString(1, newPassword);
	        pstmt.setString(2, email);
	        
	        int i = pstmt.executeUpdate();
	        
	        if(i > 0) {
	            response.sendRedirect("index.html");
	        } else {
	            response.sendRedirect("changepass.jsp");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        // Resources are not closed here as the finally block has been removed
	    }
	}

}
