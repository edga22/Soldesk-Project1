package dao;

import config.Factory;
import config.MemberMapper;
import domain.Member;

public class DbBasedMemberDao implements MemberDao {
	MemberMapper mapper;
	
	public DbBasedMemberDao(){
		mapper = Factory.getMapper(MemberMapper.class);
	}
	
	public Member loginCheck(Member member){
		return mapper.loginCheck(member);
	}
	
	public Member findIdMember(Member email){
		return mapper.findIdMember(email);
	}
	
	public Member findPwMember(Member psw){
		return mapper.findPwMember(psw);
	}
	
	public Member getMember(int memberID){
		return mapper.getMember(memberID);
	}
}
