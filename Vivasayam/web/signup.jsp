<%-- 
    Document   : signup
    Created on : 1 Feb, 2016, 5:16:19 PM
    Author     : User
--%>

<%@page import="javax.swing.text.html.HTML.Tag"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String user=request.getParameter("user");
           String fname=request.getParameter("fn");
           String lname=request.getParameter("ln");
           String password=request.getParameter("pwdc");
           String phoneno=request.getParameter("no");
           String place=request.getParameter("place");
           String district=request.getParameter("dist");
          // out.println("helalfasl;df0");
           
           
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
               Statement st=con.createStatement();
              // out.println("create table");
              // st.execute("create table vivasayam(fname varchar(30),lname varchar(20),phone varchar(30),password varchar(20),place varchar(10),district varchar(20),choice varchar(20))");
                out.println("table created");
                ResultSet rs=st.executeQuery("(select * from vivasayam where phone='"+phoneno+"')");
            
                if(rs.next()){%>
                <jsp:include page="signup.html"></jsp:include>
                <%   out.println("<html><body><strong >phone number already exsist</strong></body></html>"); }
                
                else{
                out.println("hello");
               PreparedStatement ps=con.prepareStatement("insert into vivasayam (fname,lname,phone,pwd,place,district,choice)values(?,?,?,?,?,?,?)");
               
               ps.setString(1, fname);
               ps.setString(2, lname);
               ps.setString(3, phoneno);
               ps.setString(4, password);
               ps.setString(5, place);
               ps.setString(6, district);
               ps.setString(7, user);
               
               
               ps.executeUpdate();
               out.println("value inserted");
               %>
               <jsp:forward page="index.html"></jsp:forward>
                <%}   
               
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
