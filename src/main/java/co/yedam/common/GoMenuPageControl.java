package co.yedam.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoMenuPageControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String menuId = req.getParameter("menuId");
		System.out.println(menuId);
		MenuService svc = new MenuServiceImpl();
		MenuVO vo = svc.getMenu(menuId);
		req.setAttribute("menuId", vo);
		
		try {

			req.getRequestDispatcher("menu/menupage.tiles").forward(req, resp);

		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
