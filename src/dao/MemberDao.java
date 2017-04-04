package dao;

import domain.Member;

public interface MemberDao {
	int loginCheck(Member member);
	int findIdMember(Member email);
	int findPwMember(Member psw);
}
