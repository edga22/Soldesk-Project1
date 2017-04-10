package config;

import java.util.List;

import domain.Member;

public interface MemberMapper {
	List<Member> getMembers();
	Member getMember(int memberID);
	int addMember(Member Member);
	Member loginCheck(Member member);
	Member findIdMember(Member Email);
	Member findPwMember(Member psw);
	int updatePoint(Member point);
	int delMember(int MemberID);
	Member idCheck(Member email);
	Member getoutMember(Member psw);
}