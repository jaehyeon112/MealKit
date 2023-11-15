package co.yedam.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.review.mapper.ReviewMapper;
import co.yedam.review.service.ReviewVO;



public class ReviewExe {
	public static void main(String[] args) {
		SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		
		List<ReviewVO> list = mapper.selectList();
		list.forEach(vo -> System.out.println(vo));
		
	}
	
	
	
}
