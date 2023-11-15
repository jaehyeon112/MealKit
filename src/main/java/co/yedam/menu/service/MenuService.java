package co.yedam.menu.service;

import java.util.List;

public interface MenuService {
	// 메뉴 목록 추가 수정 삭제
	public List<MenuVO> menuList(String menuId);
	public boolean addMenu(MenuVO vo);
	public boolean updateMenu(MenuVO vo);
	public boolean deleteMenu(String menuName);//s
	
}
