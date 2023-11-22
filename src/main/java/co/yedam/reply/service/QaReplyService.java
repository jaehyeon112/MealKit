package co.yedam.reply.service;

import java.util.List;

public interface QaReplyService {
	public List<QaReplyVO> replyList(int qaNo);
	public boolean addReply(QaReplyVO vo);
	public boolean editReply(QaReplyVO vo);
	public boolean removeReply(int replyNo);
}
