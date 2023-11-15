package co.yedam.users.service;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {
	private String userId;
	private String userPassword;
	private String userEmail;
	private String userName;
	private String userBirth;
	private String userPhone;
	private String userAddress1;
	private String userAddress2;
	private String userAddress3;
	
	private int userPrice;
	private String userGrade;
	private int userPoint;
}
