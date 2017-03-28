package config;

import java.util.List;

import domain.Member;

public interface MemberMapper {
	List<Member> getMembers();
	Member getMember(int memberID);
	int addMember(int MemberID);
	int findIdMember(Member Email);
	int findPwMember(Member psw);
	int delMember(int MemberID);
}
