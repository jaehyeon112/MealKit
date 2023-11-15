package co.yedam.menu.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.menu.mapper.MenuMapper;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;

public class MenuServiceImpl implements MenuService{
	
	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	MenuMapper mapper = session.getMapper(MenuMapper.class);
	
	@Override
	public List<MenuVO> menuList() {
		
		return mapper.list();
	}

	@Override
	public boolean addMenu(MenuVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateMenu(MenuVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteMenu(String menuName) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MenuVO addCart(String menuId) {
		// TODO Auto-generated method stub
		return mapper.selectMenu(menuId);
	}
	
}
