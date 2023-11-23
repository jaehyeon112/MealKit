package co.yedam.review.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.menu.service.MenuVO;
import co.yedam.review.service.ReviewVO;

public interface ReviewMapper {
	public List<ReviewVO> selectList();

	public int insert(ReviewVO vo);
	
	public List<ReviewVO> select(String userId);
	
	public int delete(int orderDetailNumber);
	

	public int update(ReviewVO vo); // 수정.
	
	public ReviewVO selectJustOne(int orderDetailNumber);
	

	
	public List<ReviewVO> selectMenuOne(String userId);
	
	public int selectCnt();
	
	public List<ReviewVO> searchBox(@Param("word") String word);
}
