package co.yedam.common;



import java.io.IOException;

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
		String menuTime = req.getParameter("menuTime");
		String menuMany = req.getParameter("menuMany");
		System.out.println(menuId);
		vo.setMenuId(menuId);
		vo.setMenuName(menuName);
		vo.setMenuNameInfo(menuNameInfo);
		vo.setMenuImage1(menuImage1);
		vo.setMenuImage2(menuImage2);
		vo.setMenuImage3(menuImage3);
		vo.setMenuKind(menuKind);
		vo.setMenuPrice(Integer.parseInt(menuPrice));
		vo.setMenuPriceOff(Integer.parseInt(menuPriceOff));
		vo.setMenuContent(menuContent);
		vo.setMenuCount(Integer.parseInt(menuCount));
		vo.setMenuPoint(Integer.parseInt(menuPoint));
		vo.setMenuTime(Integer.parseInt(menuTime));
		vo.setMenuMany(Integer.parseInt(menuMany));
		
		
		
		if(svc.updateMenu(vo)) {
			System.out.println(menuId);
			try {
				resp.sendRedirect("menuListForm.do");
			} catch(IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("updateMenuForm.do");
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	
	}

}
