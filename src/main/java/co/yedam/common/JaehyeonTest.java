package co.yedam.common;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import co.yedam.order.mapper.OrderMapper;

public class JaehyeonTest {

	public static void main(String[] args) {
		
		SqlSession se = DataSourceMybatis.getInstance().openSession(true);
		OrderMapper mapper = se.getMapper(OrderMapper.class);
		
		String cartNum = "new1,마라탕";
		// 문자열을 배열로 바꾸자. ,을 기준으로!
		String[] cartArr = cartNum.split(",");
		
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("userId","kjh3005");
		map.put("cartArr", cartArr);
		
		String test = mapper.gainPoint(map);
		System.out.println(test);
	}
}
