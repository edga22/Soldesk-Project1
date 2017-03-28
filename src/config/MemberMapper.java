package config;

import java.util.List;

import domain.Member;

public interface MemberMapper {
	List<Member> getMembers();
	Member getMember(int memberID);
	int addMember(int MemberID);
	int findMember(Member Email);
	int delMember(int MemberID);
}
