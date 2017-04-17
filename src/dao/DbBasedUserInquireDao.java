package dao;

import config.Factory;
import config.UserInquireMapper;
import domain.UserInquire;


public class DbBasedUserInquireDao implements UserInquireDao{
	UserInquireMapper mapper = null;
	
	public DbBasedUserInquireDao(){
		mapper = Factory.getMapper(UserInquireMapper.class);
	}
	
	@Override
	public UserInquire[] getUserInquires(){
		return mapper.getUserInquires().toArray(new UserInquire[mapper.getUserInquires().size()]);
	}
	
	@Override
	public UserInquire getUserInquire(){
		return mapper.getUserInquire();
	}
	
	@Override
	public int addUserInquire(UserInquire addUserInquire){
		return mapper.addUserInquire(addUserInquire);
	}

}
