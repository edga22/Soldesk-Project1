package dao;

import config.Factory;
import config.MypageMapper;
import domain.Member;

public class DbBasedMypageDao implements MypageDao{
	MypageMapper mapper;
	
	public DbBasedMypageDao(){
		mapper = Factory.getMapper(MypageMapper.class);
	}
	public int getoutMember(Member psw){
		return mapper.getoutMember(psw);
	}
} 
