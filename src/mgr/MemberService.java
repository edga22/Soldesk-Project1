package mgr;

import config.Factory;
import config.MemberMapper;
import domain.Member;

public class MemberService{
	MemberMapper mapper;
	
	public MemberService(){
		mapper = Factory.getMapper(MemberMapper.class);
	}
	
	public Member[] getMembers(){
		return mapper.getMembers().toArray(new Member[mapper.getMembers().size()]);
	}
	
	public Member getMember(int memberID){
		return mapper.getMember(memberID);
	}
	
	public int loginCheck(Member member){
		return mapper.loginCheck(member);
	}
	
	public int addMember(int MemberID){
		return mapper.addMember(MemberID);
	}
	
	public int findIdMember(Member Email){
		return mapper.findIdMember(Email);
	}
	
	public int findPwMember(Member psw){
		return mapper.findPwMember(psw);
	}
	
	public int delMember(int MemberID){
		return mapper.delMember(MemberID);
	}
}
