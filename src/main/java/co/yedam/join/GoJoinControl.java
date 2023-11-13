package co.yedam.join;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;

public class GoJoinControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.getRequestDispatcher("/join/join.tiles").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
	}

}

