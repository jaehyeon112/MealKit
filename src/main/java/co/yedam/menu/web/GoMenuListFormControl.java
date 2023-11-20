package co.yedam.menu.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoMenuListFormControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MenuService svc = new MenuServiceImpl();
		List<MenuVO> list = svc.menuList();
		req.setAttribute("list", list);
		
		try {
			req.getRequestDispatcher("menu/menuList.tiles").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
