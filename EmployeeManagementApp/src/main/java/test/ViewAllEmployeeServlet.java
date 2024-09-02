package test;
import java.io.*;
import java.util.ArrayList;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewAllEmployeeServlet extends HttpServlet{
protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
{
	HttpSession hs= req.getSession();
	if(hs==null)
	{
		req.setAttribute("msg", "Session Expired....<br>");
		req.getRequestDispatcher("Msg.jsp").forward(req, res);
	}
	else {
		ArrayList<EmployeeBean> al = new ViewAllEmployeeDao().retrieve();
		hs.setAttribute("alist", al);
		req.getRequestDispatcher("ViewAllEmployee.jsp").forward(req, res);
	}
}

}
