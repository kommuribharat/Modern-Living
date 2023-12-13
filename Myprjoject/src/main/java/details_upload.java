

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Myprjoject.Jdbc;

/**
 * Servlet implementation class details_upload
 */
public class details_upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public details_upload() {
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
		String value=request.getParameter("spec_valu");
		String pro_id=request.getParameter("product_id");
		try {
			Connection con=Jdbc.Database();
			PreparedStatement st1=con.prepareStatement("select * from images where pid=?");
			PreparedStatement st=con.prepareStatement("insert into add_details(name,spec_valu,pro_id)values(?,?,?)");
			st.setString(1, name);
			st.setString(2, value);
			st.setString(3,pro_id);
			st1.setString(1, pro_id);
			ResultSet rst=st1.executeQuery();
			if(rst.next()) {
			st.executeUpdate();
				response.sendRedirect("details_upload.jsp");
		}
		
		else {
			out.println("invalid product id");
			
		}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}

}
