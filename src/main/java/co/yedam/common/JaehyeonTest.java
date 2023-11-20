package co.yedam.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.menu.service.MenuVO;
import co.yedam.order.mapper.OrderMapper;

public class JaehyeonTest {

	public static void main(String[] args) {
		
		SqlSession se = DataSourceMybatis.getInstance().openSession(true);
		OrderMapper mapper = se.getMapper(OrderMapper.class);
		String[] cartArr = {"마라탕","11"};
		
	}
}
