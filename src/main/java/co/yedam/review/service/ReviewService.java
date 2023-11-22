package co.yedam.review.service;

import java.util.List;

public interface ReviewService {
	public List<ReviewVO> reviewList();
	public boolean addReview(ReviewVO vo);
	public List<ReviewVO> getReview(String userId);
	public boolean deleteReview(int orderDetailNumber);
	public boolean updateReview(ReviewVO vo);
	public ReviewVO selectOne(int orderDetailNumber);
	public List<ReviewVO> selectMenu(String userId);
	public int reviewCnt();
	public List<ReviewVO> searchBoxList(String menuName);
}
