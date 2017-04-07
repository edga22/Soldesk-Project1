package dao;

import domain.Member;

public interface MemberDao {
	int loginCheck(Member member);
	Member findIdMember(Member email);
	Member findPwMember(Member psw);
}
