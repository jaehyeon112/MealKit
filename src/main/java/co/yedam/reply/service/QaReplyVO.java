package co.yedam.reply.service;

import java.util.Date;

import lombok.Data;

@Data
public class QaReplyVO {
	private int replyNo;
	private int qaNo;
	private String qaReply; 
	private String userName;
	private Date replyDate;
}
