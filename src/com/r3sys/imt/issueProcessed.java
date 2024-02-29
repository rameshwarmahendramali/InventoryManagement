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
 * Servlet implementation class issueProcessed
 */
public class issueProcessed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public issueProcessed() {
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
		int processedid =Integer.parseInt( request.getParameter("processedid"));
        String processedname = request.getParameter("processedname");
        String issuername = request.getParameter("issuername");
        System.out.println("processed name"+processedname+"issuername"+issuername);
        int nquantity=Integer.parseInt(request.getParameter("quantity"));
        String issuedate =request.getParameter("issuedate");
        String issuetime=request.getParameter("issuetime");
        int old_quantity=0;
        int quantity=0;
        Connection con = DBConnect.connect();
        PreparedStatement st,st1,st2;
        try {
        	st1=con.prepareStatement("SELECT * from processed_material WHERE id=?");
        	st1.setInt(1, processedid);
        	ResultSet rs=st1.executeQuery();
        	while(rs.next())
        	{
        		 old_quantity=rs.getInt(3);
        		if(nquantity>old_quantity){
        			
        		}
        		else{
        			quantity=old_quantity-nquantity;
        			st2=con.prepareStatement("UPDATE processed_material set quantity=? where id=?");
        			st2.setInt(1,quantity);
        			st2.setInt(2, processedid);
        			st2.executeUpdate();
            st = con.prepareStatement("INSERT INTO issue_processed (processedid,processedname ,issuername,quantity,issuedate, issuetime) VALUES (?, ?, ?, ?,?,?)");
            st.setInt(1, processedid);
            st.setString(2,processedname);
            st.setString(3, issuername);
            st.setInt(4, nquantity);
            st.setString(5, issuedate);
            st.setString(6, issuetime);
            int i = st.executeUpdate();
            System.out.println(i + " :Record Inserted");
            if (i > 0) {
                response.sendRedirect("viewprocessed.jsp");
            } else {
                response.sendRedirect("issueprocessed.html");
            }
        		}
        	}
        } catch (SQLException e) {
            // Handle SQL exception appropriately
            e.printStackTrace();
        }
    
		doGet(request, response);
	}

}
