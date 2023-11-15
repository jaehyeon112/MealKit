package co.yedam.review.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.review.mapper.ReviewMapper;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;


public class ReviewServiceImpl implements ReviewService {
	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);
	ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
	
	@Override
	public List<ReviewVO> reviewList() {
		// TODO Auto-generated method stub
		return mapper.selectList();
	}
		
	@Override
	public boolean addReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo) == 1;
	}
	
		

}