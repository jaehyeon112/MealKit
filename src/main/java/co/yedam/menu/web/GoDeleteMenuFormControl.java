package co.yedam.menu.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoDeleteMenuFormControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String mid = req.getParameter("mid");

		MenuService svc = new MenuServiceImpl();
		MenuVO vo = svc.getMenu(mid);
		req.setAttribute("mid", vo);
		
		try {
			req.getRequestDispatcher("menu/deleteMenuForm.tiles").forward(req, resp);
		} catch(Exception e) {
			e.printStackTrace();
		}

	}

}
