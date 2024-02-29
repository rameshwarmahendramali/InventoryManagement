<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.r3sys.imt.DBConnect" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.io.IOException" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>
<%
    Connection con = DBConnect.connect();
    int id = Integer.parseInt(request.getParameter("id"));

    String query = "DELETE FROM raw_material WHERE id = ?";
    PreparedStatement pst = con.prepareStatement(query);
    pst.setInt(1, id);

    int rs = pst.executeUpdate();
    if (rs > 0) {
    response.sendRedirect("viewraw.jsp");
}

%>
</body>
</head>
</html>
