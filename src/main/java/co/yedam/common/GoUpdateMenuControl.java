package co.yedam.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoUpdateMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MenuVO vo = new MenuVO();
		MenuService svc = new MenuServiceImpl();
		
		String name = req.getParameter("name");
		String nameIn = req.getParameter("nameIn");
		String kind = req.getParameter("kind");
		
	}

}
