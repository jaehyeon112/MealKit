package co.yedam.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.getRequestDispatcher("main/menu.do").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
