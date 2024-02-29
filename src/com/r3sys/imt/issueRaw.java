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
 * Servlet implementation class issueRaw
 */
public class issueRaw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public issueRaw() {
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
		int rawid =Integer.parseInt( request.getParameter("rawid"));
        String rawname = request.getParameter("rawname");
        String issuername = request.getParameter("issuername");
        int nquantity=Integer.parseInt(request.getParameter("quantity"));
        String issuedate =request.getParameter("issuedate");
        String issuetime=request.getParameter("issuetime");
        int old_quantity=0;
        int quantity=0;
        Connection con = DBConnect.connect();
        PreparedStatement st,st1,st2;
        try {
        	st1=con.prepareStatement("SELECT * from raw_material WHERE id=?");
        	st1.setInt(1, rawid);
        	ResultSet rs=st1.executeQuery();
        	while(rs.next())
        	{
        		 old_quantity=rs.getInt(3);
        		if(nquantity>old_quantity){
        			
        		}
        		else{
        			quantity=old_quantity-nquantity;
        			st2=con.prepareStatement("UPDATE raw_material set quantity=? where id=?");
        			st2.setInt(1,quantity);
        			st2.setInt(2, rawid);
        			st2.executeUpdate();
        		
            st = con.prepareStatement("INSERT INTO issue_raw (rawid,rawname ,issuername,quantity,issuedate, issuetime) VALUES (?, ?, ?, ?,?,?)");
            st.setInt(1, rawid);
            st.setString(2, rawname);
            st.setString(3, issuername);
            st.setInt(4, nquantity);
            st.setString(5, issuedate);
            st.setString(6, issuetime);
            int i = st.executeUpdate();
            
            System.out.println(i + " :Record Inserted");
            if (i > 0) {
                response.sendRedirect("viewissue.jsp");
            } else {
                response.sendRedirect("issueraw.html");
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
