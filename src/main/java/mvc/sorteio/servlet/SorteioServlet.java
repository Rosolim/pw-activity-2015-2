package mvc.sorteio.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import mvc.sorteio.model.SorteioModel;

@WebServlet("/sorteio")
public class SorteioServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessao = req.getSession();
		SorteioModel showNr;
		Integer random;
		Random randomGenerator = new Random();
		Boolean teste = (Boolean) sessao.getAttribute("sorteioIniciado");
		if (teste == null || teste == false) {
			// random numbers are 1 at 10.
			ArrayList<Integer> numbers = new ArrayList<Integer>();
			showNr = new SorteioModel();
			if (numbers.size() <= 10 && showNr.getContador() < 10) {
				random = randomGenerator.nextInt(10);
				if (!numbers.contains(random) && random != 0) {
					numbers.add(random);
					showNr.setMostraNumero(random);
					showNr.setContador();
					sessao.setAttribute("random", random);
					sessao.setAttribute("showNr", showNr);
				}
			}
		}

		else {
			ArrayList<Integer> numero = new ArrayList<Integer>();
			numero.add((Integer) sessao.getAttribute("random"));
			showNr = (SorteioModel) sessao.getAttribute("showNr");
			if (numero.size() <= 10 && showNr.getContador() < 10) {
				random = randomGenerator.nextInt(10);
				if (!numero.contains(random) && random != 0) {
					numero.add(random);
					showNr.setMostraNumero(random);
					showNr.setContador();
				}
			}
		}

		sessao.setAttribute("sorteioIniciado", true);
		req.setAttribute("showNr", showNr);
		req.getRequestDispatcher("sorteio.jsp").forward(req, resp);
	}

}
