package co.yedam.review.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.menu.service.MenuVO;
import co.yedam.review.mapper.ReviewMapper;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;

public class ReviewServiceImpl implements ReviewService {
	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);
	ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);

	@Override
	public List<ReviewVO> reviewList() {
		return mapper.selectList();
	}

	@Override
	public boolean addReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo) == 1;
	}

	@Override
	public List<ReviewVO> getReview(String userId) {
		// TODO Auto-generated method stub
		return mapper.select(userId);
	}

	@Override
	public boolean deleteReview(int orderDetailNumber) {
		// TODO Auto-generated method stub
		return mapper.delete(orderDetailNumber) > 0 ? true : false;
	}

	@Override
	public boolean updateReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo) > 0 ? true : false;
	}

	@Override
	public ReviewVO selectOne(int orderDetailNumber) {
		return mapper.selectJustOne(orderDetailNumber);
	}

	@Override
	public List<ReviewVO> selectMenu(String userId) {
		// TODO Auto-generated method stub
		return mapper.selectMenuOne(userId);
	}

	@Override
	public int reviewCnt() {
		// TODO Auto-generated method stub
		return mapper.selectCnt();
	}

	@Override
	public List<ReviewVO> searchBoxList(String menuName) {
		// TODO Auto-generated method stub
		return mapper.searchBox(menuName);
	}


}
