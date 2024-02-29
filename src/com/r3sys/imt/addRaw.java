package com.r3sys.imt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class addRaw
 */
public class addRaw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addRaw() {
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
		// TODO Auto-generated method stub
		String name = request.getParameter("uname");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String unit = request.getParameter("unit");
        int costPerUnit =Integer.parseInt( request.getParameter("cunit"));
        Connection con = DBConnect.connect();
        PreparedStatement st;
        try {
            st = con.prepareStatement("INSERT INTO raw_material (name, quantity, unit, costperunit) VALUES (?, ?, ?, ?)");
            st.setString(1, name);
            st.setInt(2, quantity);
            st.setString(3, unit);
            st.setInt(4, costPerUnit);
            int i = st.executeUpdate();
            System.out.println(i + " :Record Inserted");
            if (i > 0) {
                response.sendRedirect("viewraw.jsp");
            } else {
                response.sendRedirect("addraw.html");
            }
        } catch (SQLException e) {
            // Handle SQL exception appropriately
            e.printStackTrace();
        }
    

        
        
		doGet(request, response);
	}

}
