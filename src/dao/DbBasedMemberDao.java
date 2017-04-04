package dao;

import config.Factory;
import config.MemberMapper;
import domain.Member;

public class DbBasedMemberDao implements MemberDao {
	MemberMapper mapper;
	
	public DbBasedMemberDao(){
		mapper = Factory.getMapper(MemberMapper.class);
	}
	
	public int loginCheck(Member email, Member pw){
		return mapper.loginCheck(email, pw);
	}
	
	public int findIdMember(Member email){
		return mapper.findIdMember(email);
	}
	
	public int findPwMember(Member psw){
		return mapper.findPwMember(psw);
	}
}