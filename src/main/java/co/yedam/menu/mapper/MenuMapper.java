package co.yedam.menu.mapper;

import java.util.List;
import java.util.Map;

import co.yedam.menu.service.MenuVO;

public interface MenuMapper {
	public List<MenuVO> list();
	public int insertMenu(MenuVO vo);
	public int updateMenu(MenuVO vo);
	public int deleteMenu(MenuVO vo);
	
	//팀장이 작업함
	public MenuVO selectMenu(String menuId);
	
}