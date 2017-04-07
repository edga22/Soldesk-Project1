package dao;

import domain.Member;

public interface MemberDao {
	Member loginCheck(Member member);
	Member findIdMember(Member email);
	Member findPwMember(Member psw);
	Member getMember(int memberID);
}
