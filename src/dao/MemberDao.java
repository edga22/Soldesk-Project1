package dao;

import domain.Member;

public interface MemberDao {
	Member[] getMembers();				//회원 전체리스트
	Member getMember(int memberID);		//회원 한명의 정보
	int addMember(Member Member);		//회원가입
	int updateMember(Member member);	//회원수정
	Member loginCheck(Member member);	//로그인 아이디, 비번 체크
	Member findIdMember(Member Email);	//아이디 찾기
	Member findPwMember(Member psw);	//비밀번호 찾기
	int updatePoint(Member point);		//admin 보너스 포인트 수정
	int delMember(int MemberID);		//admin 회원 강제탈퇴
	boolean idCheck(Member email);		//아이디, 전화번호 중복시 회원가입 불가
	int getoutMember(int MemberID);	//회원 탈퇴
}
