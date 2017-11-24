<%-- 
    Document   : vegData
    Created on : 16 Mar, 2016, 9:42:47 PM
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession s=request.getSession();
            
            
            String place=s.getAttribute("place").toString();
           
            %>
         <% String v=request.getParameter("pn");
           String vv=request.getParameter("pv");
           String vpp=request.getParameter("ppp");
           String vp=request.getParameter("pp");
           
           
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
               Statement st=con.createStatement();
               PreparedStatement ps=con.prepareStatement("insert into veg values(?,?,?,?,?)");
               ps.setString(1, place);
               ps.setString(2, v);
               ps.setString(3, vv);
               ps.setString(4, vpp);
               ps.setString(5, vp);
               ps.executeUpdate();
               out.println("value inserted");
              
               
           }
           catch(ClassNotFoundException e){
               out.println(e);
           }
           catch(SQLException ex){
               out.println(ex);
           }
           %>
    </body>
</html>
