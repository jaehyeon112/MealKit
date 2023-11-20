package co.yedam.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.review.mapper.ReviewMapper;
import co.yedam.review.service.ReviewVO;



public class ReviewExe {
	public static void main(String[] args) {
		SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		
//		List<ReviewVO> list = mapper.selectList();
//		list.forEach(vo -> System.out.println(vo));
		
//		ReviewVO vo = new ReviewVO();
//		vo.setMenuName("토마토 스파게티");
//		vo.setReviewStar(4);
//		vo.setReviewImage("토마토 스파게티.jpg");
//		vo.setUserId("user1");
//		vo.setReviewContent("맛있어요");
//		
//		mapper.insert(vo);
		
//		List<ReviewVO> list = mapper.select("asdasd123");
//		list.forEach(vo -> System.out.println(vo));
		
//		mapper.delete(5);
		
//		ReviewVO vo = new ReviewVO();
//		vo.setReviewStar(3);
//		vo.setReviewImage("감자.jpg");
//		vo.setReviewContent("감자감자감자감자");
//		vo.setOrderDetailNumber(10);
//		mapper.update(vo);
	}
	
	
	
}
