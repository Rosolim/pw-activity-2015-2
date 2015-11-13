package mvc;

import java.io.IOException;

import javax.persistence.metamodel.SetAttribute;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/imc")
public class CalculoIMCController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
				
		String paramPeso = req.getParameter("peso");
		Double peso = paramPeso == null ? 0.0 : Double.parseDouble(paramPeso);
		String paramAltura = req.getParameter("altura");
		Double altura = paramAltura == null ? 0.0 : Double.parseDouble(paramAltura);
		
		CalculoIMCModel imcmod = new CalculoIMCModel();
				imcmod.setPeso(peso);
				imcmod.setAltura(altura);
				
	}
}
