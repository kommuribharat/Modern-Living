

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import Myprjoject.Jdbc;

/**
 * Servlet implementation class book
 */
public class book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public book() {
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
		doGet(request, response);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String loc=request.getParameter("loc");
		String mail=request.getParameter("mail");
		String add=request.getParameter("address");
		String phno=request.getParameter("phno");
		String pincode=request.getParameter("pincode");
		String qty=request.getParameter("qy");
		String cost=request.getParameter("cost");
		String id=request.getParameter("product_id");
		//String pro_path=request.getParameter("product_path");
		try {
			Connection con=Jdbc.Database();
			PreparedStatement st=con.prepareStatement("insert into purchase(name,loc,mail,address,phno,pincode,qy,cost,pid)values(?,?,?,?,?,?,?,?,?)");
			st.setString(1, name);
			st.setString(2, loc);
			st.setString(3,mail);
			st.setString(4,add);
			st.setString(5, phno);
			st.setString(6,pincode);
			st.setString(7,qty);
			st.setString(8, cost);
			st.setString(9,id);
			
			
			st.executeUpdate();
				response.sendRedirect("final.html");		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}

}
