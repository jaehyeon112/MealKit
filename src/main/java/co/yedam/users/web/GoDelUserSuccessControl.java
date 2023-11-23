package co.yedam.users.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.command;

public class GoDelUserSuccessControl implements command {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		req.getSession().invalidate();
		
		try {
			req.getRequestDispatcher("/delete/deleteSuccess.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
}
