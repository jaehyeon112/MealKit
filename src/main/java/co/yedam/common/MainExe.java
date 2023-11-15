package co.yedam.common;

public class MainExe {

	public static void main(String[] args) {

		SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		MenuMapper mapper = session.getMapper(MenuMapper.class);
	

}