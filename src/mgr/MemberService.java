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
	
	public Member loginCheck(Member member){
		return mapper.loginCheck(member);
	}
	
	public int addMember(Member Member){
		return mapper.addMember(Member);
	}
	
	public Member findIdMember(Member Email){
		return mapper.findIdMember(Email);
	}
	
	public Member findPwMember(Member psw){
		return mapper.findPwMember(psw);
	}
	
	public int updateMember(Member Email){
		return mapper.updateMember(Email);
	}
	
	public int delMember(int MemberID){
		return mapper.delMember(MemberID);
	}
	public Member idCheck(Member email){
		return mapper.idCheck(email);
	}
	public Member getoutMember(Member psw){
		return mapper.getoutMember(psw);
	}
}
