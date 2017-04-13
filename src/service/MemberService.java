package service;

import dao.DbBasedMemberDao;
import dao.MemberDao;
import domain.Member;

public class MemberService {
	MemberDao mapper;

	public MemberService(){
		this.mapper = new DbBasedMemberDao();
	}

	//회원 전체 리스트 조회
	//return : 회원 전체
	public Member[] getMembers(){
		return mapper.getMembers();
	}
	
	// 회원 한명 조회
	//param : 고유번호
	//return : 회원 한명 정보
	public Member getMember(int memberID){
		return mapper.getMember(memberID);
	}
	
	// 로그인 체크
	// param : Member
	// return : 아이디, 비밀번호
	public Member loginCheck(Member member){
		return mapper.loginCheck(member);
	}
	
	
	//회원가입
	// param : Member
	// return : 보너스포인트를 제외한 모든값.
	public int addMember(Member Member){
		return mapper.addMember(Member);
	}
	
	//아이디찾기
	//praram: Member
	//return : 이름, 전화번호
	public Member findIdMember(Member Email){
		return mapper.findIdMember(Email);
	}
	
	//비밀번호찾기
	//param : Member
	//return : 이메일, 이름, 전화번호
	public Member findPwMember(Member psw){
		return mapper.findPwMember(psw);
	}
	
	//admin 보너스 포인트 수정
	//param : Member
	//return : 보너스 포인트
	public int updatePoint(Member point){
		return mapper.updatePoint(point);
	}
	
	//admin 회원 강제탈퇴
	//param : Member
	//return : 고유번호
	public int delMember(int MemberID){
		return mapper.delMember(MemberID);
	}
	
	//아이디 전화번호 중복체크
	//param : Member
	//return : true(중복)
	public boolean idCheck(Member email){
		return mapper.idCheck(email);
	}
	
	//회원탈퇴
	//param : Member
	//return : 비밀번호
	public Member getoutMember(Member psw){
		return mapper.getoutMember(psw);
	}
}
