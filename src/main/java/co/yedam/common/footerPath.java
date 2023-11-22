package co.yedam.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class footerPath implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("id");
		
		switch(id) {
		case "1" :
			try {
				req.getRequestDispatcher("etc/bottom.tiles").forward(req, resp);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
			break;
		case "2" :
			break;
		case "3" :
			break;
		}
	}

}
