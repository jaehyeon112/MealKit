package co.yedam.reply.mapper;

import java.util.List;

import co.yedam.reply.service.QaReplyVO;

public interface QaReplyMapper {
	public List<QaReplyVO> replyList(int qaNo);
	public int insertReply(QaReplyVO vo);
	public int updateReply(QaReplyVO vo);
	public int deleteReply(int replyNo);
	
}
