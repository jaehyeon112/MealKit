package co.yedam.menu.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoUpdateMenuFormControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String mid = req.getParameter("menuId");
		MenuService svc = new MenuServiceImpl();
		MenuVO vo = svc.getMenu(mid);
		req.setAttribute("mid", vo);
		
		try {
			req.getRequestDispatcher("menu/updateMenuForm.tiles").forward(req, resp);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
