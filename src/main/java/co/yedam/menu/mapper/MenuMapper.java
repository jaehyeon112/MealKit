package co.yedam.menu.mapper;

import java.util.List;
import java.util.Map;

import co.yedam.menu.service.MenuVO;

public interface MenuMapper {
	public List<MenuVO> list();
	public MenuVO selectMenu(String menuId);
	public int insertMenu(MenuVO vo);
	public int updateMenu(MenuVO vo);
	public int deleteMenu(MenuVO vo);
	
	
}