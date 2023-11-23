package co.yedam.review.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class MainListControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		
		
		String path = "/main/main.tiles";
		MenuService svc = new MenuServiceImpl();
		List<MenuVO> list = svc.menuList();
		req.setAttribute("menuList", list);
		System.out.println(list);
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}

