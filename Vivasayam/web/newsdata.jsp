<%-- 
    Document   : newsdata
    Created on : 5 Mar, 2016, 6:54:05 PM
    Author     : User
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String header=request.getParameter("he");
            String news=request.getParameter("news");
            String notes=request.getParameter("not");
            
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
            Statement st=con.createStatement(); 
           // st.execute("create table news(hea varchar(500),news varchar(2000),notes(2000))");
            
            st.executeUpdate("insert into news (head,news,notes)values('"+header+"','"+news+"','"+notes+"')");
            out.println("values updated");
            
            }catch(ClassNotFoundException | SQLException e){
                out.println(e);
            }
        %>
    </head>
    <body>
       
    </body>
</html>
