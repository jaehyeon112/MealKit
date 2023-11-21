package co.yedam.review.mapper;

import java.util.List;

import co.yedam.review.service.ReviewVO;

public interface ReviewMapper {
	public List<ReviewVO> selectList();

	public int insert(ReviewVO vo);
	
	public List<ReviewVO> select(String userId);
	
	public int delete(int orderDetailNumber);
	
	public boolean update(ReviewVO vo);

}
