package service;

import dao.DbBasedMemberDao;
import dao.MemberDao;
import domain.Member;

public class MemberService {
	MemberDao memberDao;

	public MemberService(){
		this.memberDao = new DbBasedMemberDao();;
	}
	
	//회원 전체 리스트 조회
	//return : 회원 전체
	public Member[] getMembers(){
		return memberDao.getMembers();
		}
		
	// 회원 한명 조회
	//param : 고유번호
	//return : 회원 한명 정보
	public Member getMember(int memberID){
		return memberDao.getMember(memberID);
		}	
	
}
