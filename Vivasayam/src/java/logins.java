
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

public class logins extends HttpServlet {
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out=response.getWriter();
            response.setContentType("text/html");
            RequestDispatcher rd;
            String phone=request.getParameter("phone");
            String pwd=request.getParameter("pwd");
            
            if(phone.equals("1234567890")&& pwd.equals("kumar")){
                rd=request.getRequestDispatcher("admin.jsp");
                rd.forward(request, response);
            }
            else{
                try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
                        Statement st=con.createStatement();
                        PreparedStatement ps=con.prepareStatement("select * from vivasayam where phone=? and pwd=? ");
                        ps.setString(1, phone);
                        ps.setString(2, pwd);
                        int x=0;
                        ResultSet rs=ps.executeQuery();
                        HttpSession s=request.getSession();
                        while(rs.next()){
                            if(rs.getString(3).equals(phone)&& rs.getString(4).equals(pwd)){
                                if(rs.getString(7).equals("farmer")){
                                    x=1;
                                    
                                }
                                else if(rs.getString(7).equals("shopkeeper")){
                                    x=2;
                                }
                                else {
                                    x=3;
                                }
                            }
                           s.setAttribute("fn",rs.getString(1));
                           s.setAttribute("ln",rs.getString(2));
                           s.setAttribute("phone",rs.getString(3));
                           s.setAttribute("place",rs.getString(5));
                           s.setAttribute("district",rs.getString(6));
                           s.setAttribute("product",rs.getString(8));
                           }
                                                    

                        if(x==1){
                            rd=request.getRequestDispatcher("farmer.jsp");
                            rd.forward(request, response);
                        }
                        if(x==2){
                            rd=request.getRequestDispatcher("market.jsp");
                            rd.forward(request, response);
                        }
                        if(x==3){
                            rd=request.getRequestDispatcher("intermediater.jsp");
                            rd.forward(request, response);
                        }
                        if(x==0){
                            rd=request.getRequestDispatcher("error.jsp");
                            rd.forward(request, response);
                        }
                }
                catch(ClassNotFoundException | SQLException e){
                    out.println(e);
                }
            }
            
    }

  

}
