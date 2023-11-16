package co.yedam.menu.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoUpdateMunuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MenuVO vo = new MenuVO();
		MenuService svc = new MenuServiceImpl();
		
		String menuId = req.getParameter("menuId");
		String menuName = req.getParameter("menuName");
		String menuNameInfo = req.getParameter("menuNameInfo");
		
		String menuImage1 = req.getParameter("menuImage1");
		String menuImage2 = req.getParameter("menuImage2");
		String menuImage3 = req.getParameter("menuImage3");
		
		String menuKind = req.getParameter("menuKind");
		String menuPrice = req.getParameter("menuPrice");
		String menuPriceOff = req.getParameter("menuPriceOff");
		String menuContent = req.getParameter("menuContent");
		String menuCount = req.getParameter("menuCount");
		String menuPoint = req.getParameter("menuPoint");

	}

}
