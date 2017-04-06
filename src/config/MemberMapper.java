package config;

import java.util.List;

import domain.Member;

public interface MemberMapper {
	List<Member> getMembers();
	Member getMember(int memberID);
	int addMember(Member Member);
	int loginCheck(Member member);
	int findIdMember(Member Email);
	int findPwMember(Member psw);
	int updateMember(String email);
	int delMember(int MemberID);
}