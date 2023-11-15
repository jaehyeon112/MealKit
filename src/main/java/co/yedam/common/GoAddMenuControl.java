package co.yedam.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoAddMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MenuVO vo = new MenuVO();
		MenuService svc = new MenuServiceImpl();
		
		String mid = req.getParameter("mid");
		String mna = req.getParameter("mna");
		String mni = req.getParameter("mni");
		String ima1 = req.getParameter("ima1");
		String ima2 = req.getParameter("ima2");
		String ima3 = req.getParameter("ima3");
		String mki = req.getParameter("mki");
		int mpr = Integer.parseInt(req.getParameter("mpr"));
		int mpo = Integer.parseInt(req.getParameter("mpo"));
		String mct = req.getParameter("mct");
		int mcnt = Integer.parseInt(req.getParameter("mcnt"));
		int mpit = Integer.parseInt(req.getParameter("mpit"));
		
		vo.setMenuId(mid);
		vo.setMenuName(mna);
		vo.setMenuNameInfo(mni);
		vo.setMenuImage1(ima1);
		vo.setMenuImage2(ima2);
		vo.setMenuImage3(ima3);
		vo.setMenuKind(mki);
		vo.setMenuPrice(mpr);
		vo.setMenuPriceOff(mpo);
		vo.setMenuContent(mct);
		vo.setMenuCount(mcnt);
		vo.setMenuPoint(mpit);
		svc.addMenu(vo);
		try {
			req.getRequestDispatcher("menu/menu.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			
			e.printStackTrace();
		}
	}

}
