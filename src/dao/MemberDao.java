package dao;

import domain.Member;

public interface MemberDao {
	int loginCheck(Member email, Member pw);
	int findIdMember(Member email);
	int findPwMember(Member psw);
}
