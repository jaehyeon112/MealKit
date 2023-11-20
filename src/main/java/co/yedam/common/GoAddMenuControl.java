package co.yedam.common;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;




public class GoAddMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MenuVO vo = new MenuVO();
		/*
		 * if(req.getMethod().equals("GET")) {
		 * 
		 * String menuId = req.getParameter("menuId"); // System.out.println(menuId+
		 * "입니다"); String menuName = req.getParameter("menuName"); String menuNameInfo =
		 * req.getParameter("menuNameInfo"); // String menuImage1 =
		 * req.getParameter("menuImage1"); // String menuImage2 =
		 * req.getParameter("menuImage2"); // String menuImage3 =
		 * req.getParameter("menuImage3"); String menuKind =
		 * req.getParameter("menuKind"); String menuPrice =
		 * req.getParameter("menuPrice"); String menuPriceOff =
		 * req.getParameter("menuPriceOff"); String menuCentent =
		 * req.getParameter("menuCentent"); String menuCount =
		 * req.getParameter("menuCount"); String menuPoint =
		 * req.getParameter("menuPoint"); System.out.println("=======================");
		 * System.out.println("=======================");
		 * System.out.println("======================="); System.out.println(menuPrice);
		 * System.out.println("=======================");
		 * System.out.println("=======================");
		 * System.out.println("=======================");
		 * 
		 * vo.setMenuId(menuId); vo.setMenuName(menuName);
		 * vo.setMenuNameInfo(menuNameInfo); // vo.setMenuImage1(menuImage1); //
		 * vo.setMenuImage2(menuImage2); // vo.setMenuImage3(menuImage3);
		 * vo.setMenuKind(menuKind); vo.setMenuPrice(Integer.parseInt(menuPrice));
		 * vo.setMenuPriceOff(Integer.parseInt(menuPriceOff));
		 * vo.setMenuContent(menuCentent); vo.setMenuCount(Integer.parseInt(menuCount));
		 * vo.setMenuPoint(Integer.parseInt(menuPoint));
		 * 
		 * } else if(req.getMethod().equals("POST")) {
		 */
			String savaDir = req.getServletContext().getRealPath("image");
			System.out.println("===================");
			System.out.println("===================");
			System.out.println("===================");
			System.out.println(savaDir);
			System.out.println("===================");
			System.out.println("===================");
			System.out.println("===================");
			int size = 5 * 1024 * 1024;
			
			try {
				MultipartRequest mr =
						new MultipartRequest(req, 
								savaDir,
								size,
								"UTF-8",
								new DefaultFileRenamePolicy()			
								);
				
//				System.out.println(req.getParameter("menuId"));
//				System.out.println(mr.getParameter("menuId"));
				String menuId = mr.getParameter("menuId");
				String menuName = mr.getParameter("menuName");
				String menuNameInfo = mr.getParameter("menuNameInfo");
				
				String menuImage1 = mr.getFilesystemName("menuImage1");
				String menuImage2 = mr.getFilesystemName("menuImage2");
				String menuImage3 = mr.getFilesystemName("menuImage3");
				
				String menuKind = mr.getParameter("menuKind");
				String menuPrice = mr.getParameter("menuPrice");
				String menuPriceOff = mr.getParameter("menuPriceOff");
				String menuContent = mr.getParameter("menuContent");
				String menuCount = mr.getParameter("menuCount");
				String menuPoint = mr.getParameter("menuPoint");
				String menuTime = mr.getParameter("menuTime");
				String menuMany = mr.getParameter("menuMany");
				
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
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		MenuService svc = new MenuServiceImpl();
		if (svc.addMenu(vo)) {
			try {
				resp.sendRedirect("menu.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("addForm.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
