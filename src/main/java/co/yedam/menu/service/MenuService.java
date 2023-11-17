package co.yedam.menu.service;

import java.util.List;

public interface MenuService {
	// 메뉴 목록 추가 수정 삭제
	public List<MenuVO> menuList();
	public boolean addMenu(MenuVO vo);
	public boolean updateMenu(MenuVO vo);
	public boolean deleteMenu(String menuId);//s
	public MenuVO getMenu(String menuId);
	
	
	// 팀장이 작업함
	public MenuVO addCart(String menuId);
}
