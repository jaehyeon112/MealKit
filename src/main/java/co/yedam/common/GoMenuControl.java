package co.yedam.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;



public class GoMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MenuService svc = new MenuServiceImpl();
		List<MenuVO> list = svc.menuList();
		
		req.setAttribute("list", list);
		
		List<MenuVO> list2 = svc.menuList("up");
		List<MenuVO> list3 = svc.menuList("down");
		
		req.setAttribute("listUp", list2);
		req.setAttribute("listDown", list3);
		
		System.out.println(list);
		try {

			req.getRequestDispatcher("menu/menu.tiles").forward(req, resp);

		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
