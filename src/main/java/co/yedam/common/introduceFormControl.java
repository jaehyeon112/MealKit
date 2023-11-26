package co.yedam.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class introduceFormControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.getRequestDispatcher("menu/introduce.tiles").forward(req, resp);
		} catch(Exception e) {
			e.printStackTrace();
		}

	}

}
