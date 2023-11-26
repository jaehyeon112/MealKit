package co.yedam.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoMainControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		if(userId==null) {
			session.setAttribute("userId", null);
		}
		MenuService svc = new MenuServiceImpl();
		List<MenuVO> list = svc.menuList();
		req.setAttribute("menuList", list);
		try {
			req.getRequestDispatcher("/main/main.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
