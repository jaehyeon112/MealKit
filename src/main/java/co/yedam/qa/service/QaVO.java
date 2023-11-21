package co.yedam.qa.service;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@Data
public class QaVO {
	
	private String userId;
	private int qaNo;
	private String qaContent;
	private String userName;
	private String qaImage;
	private Date qaDate;
	private String qaState;
	private String title;
}
