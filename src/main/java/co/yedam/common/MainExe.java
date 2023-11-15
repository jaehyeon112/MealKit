package co.yedam.common;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import co.yedam.menu.mapper.MenuMapper;
import co.yedam.menu.service.MenuVO;

public class MainExe {

	public static void main(String[] args) {

		SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		MenuMapper mapper = session.getMapper(MenuMapper.class);

		MenuVO vo = new MenuVO();
		vo.setMenuId("mid");
		vo.setMenuName("mna");
		vo.setMenuNameInfo("mni");
		vo.setMenuImage1("ima1");
		vo.setMenuImage2("ima2");
		vo.setMenuImage3("ima3");
		vo.setMenuKind("mki");
		vo.setMenuPrice(123);
		vo.setMenuPriceOff(12);
		vo.setMenuCount(1);
		vo.setMenuContent("aaaa");
		vo.setMenuPoint(11);
		
		mapper.insertMenu(vo);
	
	}
}
