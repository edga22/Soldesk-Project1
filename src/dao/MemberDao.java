package dao;

import domain.Member;

public interface MemberDao {
	Member[] getMembers();
	Member getMember(int memberID);
	int addMember(Member Member);
	Member loginCheck(Member member);
	Member findIdMember(Member Email);
	Member findPwMember(Member psw);
	int updateMember(Member email);
	int delMember(int MemberID);
}
