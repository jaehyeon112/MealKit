package co.yedam.users.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;

public class GoDelUserFormControl implements command {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.getRequestDispatcher("/delete/deleteForm.tiles").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
