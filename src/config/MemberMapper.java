package config;

import java.util.List;

import domain.Member;

public interface MemberMapper {
	List<Member> getMembers();
	Member getMember(int memberID);
	int addMember(int MemberID);
	int updateMember(Member Email);
	int delMember(int MemberID);
}
