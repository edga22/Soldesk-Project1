package dao;

import domain.Member;

public interface MemberDao {
	Member[] getMembers();
	Member getMember(int memberID);
	int addMember(Member Member);
	Member loginCheck(Member member);
	Member findIdMember(Member Email);
	Member findPwMember(Member psw);
	int updatePoint(Member point);
	int delMember(int MemberID);
<<<<<<< HEAD
<<<<<<< HEAD
	Member idCheck(Member email);
=======
>>>>>>> 송성우 마이페이지
=======
>>>>>>> 송성우 마이페이지
	Member getoutMember(Member psw);
}
