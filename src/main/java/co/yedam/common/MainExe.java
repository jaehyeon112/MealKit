package co.yedam.common;

import org.apache.ibatis.session.SqlSession;

import co.yedam.menu.mapper.MenuMapper;

public class MainExe {

	public static void main(String[] args) {

		SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		MenuMapper mapper = session.getMapper(MenuMapper.class);
		System.out.println(mapper.selectMenu("P001"));
				

	}
}