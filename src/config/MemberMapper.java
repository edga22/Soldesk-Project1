package config;

import java.util.List;

import domain.Member;

public interface MemberMapper {
	List<Member> getMembers();			//맴버 전체리스트
	Member getMember(int memberID);		//맴버 한명
	int addMember(Member Member);		//회원가입
	int updateMember(Member member);	//회원수정
	Member loginCheck(Member member);	//로그인 확인
	Member findIdMember(Member Email);	//아이디 찾기
	Member findPwMember(Member psw);	//비밀번호 찾기
	int updatePoint(Member point);		//admin 보너스 보인트 수정
	int delMember(int MemberID);		//맴버 강제 탈퇴
	boolean idCheck(Member email);		//아이디 및 전화번호 중복체크
	Member getoutMember(Member psw);	//회원이 직접 탈퇴.
}