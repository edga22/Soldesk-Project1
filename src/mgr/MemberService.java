package mgr;

import config.Factory;
import config.MemberMapper;
import domain.Member;

public class MemberService{
	MemberMapper member;
	
	public MemberService(){
		member = Factory.getMapper(MemberMapper.class);
	}
	
	public Member[] getMembers(){
		return member.getMembers().toArray(new Member[member.getMembers().size()]);
	}
	
	public Member getMember(int memberID){
		return member.getMember(memberID);
	}
	
	public int loginCheck(Member email, Member pw){
		return member.loginCheck(email, pw);
	}
	
	public int addMember(int MemberID){
		return member.addMember(MemberID);
	}
	
	public int findIdMember(Member Email){
		return member.findIdMember(Email);
	}
	
	public int findPwMember(Member psw){
		return member.findPwMember(psw);
	}
	
	public int delMember(int MemberID){
		return member.delMember(MemberID);
	}
}
