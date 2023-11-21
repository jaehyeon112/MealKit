package co.yedam.common;

import org.apache.ibatis.session.SqlSession;

import co.yedam.menu.mapper.MenuMapper;
import co.yedam.menu.service.MenuVO;

public class MainExe {

	public static void main(String[] args) {
		SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);
		MenuMapper mapper = sqlSession.getMapper(MenuMapper.class);
//		MenuService svc = new MenuServiceImpl();
//		MenuVO vo = svc.addCart("P001");
//		System.out.println(vo);
//		CartVO vo2 = new CartVO();
//		vo2.setMenuId(vo.getMenuId());
//		vo2.setMenuName(vo.getMenuName());
//		vo2.setUserId("kjh3005");
//		vo2.setMenuImage1(vo.getMenuImage1());
//		vo2.setMenuPrice(vo.getMenuPrice());
//		System.out.println(vo2);
		
//		SqlSession se = DataSourceMybatis.getInstance().openSession(true);
//		MenuMapper mapper = se.getMapper(MenuMapper.class);
//		System.out.println(mapper.deleteMenu("1"));
//		CartService svc = new CartServiceImpl();
//		CartVO vo = svc.cartOne(53);
//		System.out.println(vo);
		
		MenuVO vo = new MenuVO();
		vo.setMenuId("2");
		vo.setMenuName("국밥");
		vo.setMenuNameInfo("할매국밥");
		vo.setMenuImage1("1.jpg");
		vo.setMenuImage2("2.jpg");
		vo.setMenuImage3("3.jpg");
		vo.setMenuKind("1단계");
		vo.setMenuPrice(10000);
		vo.setMenuPriceOff(5000);
		vo.setMenuContent("20년 전통할매국밥");
		vo.setMenuCount(10);
		vo.setMenuPoint(100);
		vo.setMenuTime(10);
		vo.setMenuMany(10);
		mapper.updateMenu(vo);
}
}
