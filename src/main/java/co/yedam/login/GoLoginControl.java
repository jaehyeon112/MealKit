package co.yedam.login;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;

public class GoLoginControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		try {
			req.getRequestDispatcher("/login/login.tiles").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
	}

}
