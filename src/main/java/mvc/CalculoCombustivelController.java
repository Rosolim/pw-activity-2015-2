package mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/combustivel")
public class CalculoCombustivelController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String paramAlcool = req.getParameter("alcool");
		Double alcool = paramAlcool == null ? 0.0 : Double
				.parseDouble(paramAlcool);
		String paramGasolina = req.getParameter("gasolina");
		Double gasolina = paramGasolina == null ? 0.0 : Double
				.parseDouble(paramGasolina);

		CalculoCombustivelModel comb = new CalculoCombustivelModel();
		comb.setPrecoAlcool(alcool);
		comb.setPrecoGasolina(gasolina);
		comb.calculaValor(alcool, gasolina);
		comb.mostraResultado();
		
		req.setAttribute("comb", comb);
		//Chamar o JSP apenas para mostrar o resultado.
	    req.getRequestDispatcher("combustivel.jsp").forward(req, resp);
	}
}
