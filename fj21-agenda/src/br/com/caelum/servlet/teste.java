package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/minhaServlet")
public class teste extends HttpServlet {
	public void init(ServletConfig config) throws ServletException {
		super.init();
		System.out.println("iniciando a servlet");

	}

	public void destroy() {
		super.destroy();
		System.out.println("Destruindo a servlet");
	}

	protected void service(HttpServletRequest req, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>  Oi mundo Servelet! </h1>");
		out.println("</body>");
		out.println("</html>");
	}

}
