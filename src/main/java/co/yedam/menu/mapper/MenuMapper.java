package co.yedam.menu.mapper;

import java.util.List;
import java.util.Map;

import co.yedam.menu.service.MenuVO;

public interface MenuMapper {
	public List<MenuVO> list();
	public int insertMenu(MenuVO vo);
	public int updateMenu(MenuVO vo);
	public int deleteMenu(String menuId);
	public MenuVO getMenu(String menuId);
	public List<MenuVO> up();
	public List<MenuVO> down();
	//팀장이 작업함
	public MenuVO selectMenu(String menuId);
}