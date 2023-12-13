

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
 * Servlet implementation class image
 */
public class image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public image() {
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
		String pro_path=request.getParameter("product_path");
		String pname=request.getParameter("pro_name");
		String price=request.getParameter("price");
		String pid=request.getParameter("pid");
		
		PrintWriter out = response.getWriter();
		try {
			Connection con=Jdbc.Database();
			PreparedStatement smtt=con.prepareStatement("insert into images(name,price,pid,imagepath)values(?,?,?,?)");
			smtt.setString(1, pname);
			smtt.setString(2, price);
			smtt.setString(3, pid);
			smtt.setString(4, pro_path);
				
			System.out.println(price);
			
			smtt.executeUpdate();
			out.println("successfully inserted");
			
			
		}
		catch(Exception e){
			
		}
		
		
	}

}
