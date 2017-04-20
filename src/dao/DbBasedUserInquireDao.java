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
	public UserInquire[] getAskTitle(int memberID){
		return mapper.getAskTitle(memberID);
	}
	
	@Override
	public UserInquire getUserInquire(int userInquireID){
		return mapper.getUserInquire(userInquireID);
	}
	
	@Override
	public int addUserInquire(UserInquire addUserInquire){
		return mapper.addUserInquire(addUserInquire);
	}
	
	@Override
	public int updateUserInquire(UserInquire userInquireID){
		return mapper.updateUserInquire(userInquireID);
	}
	
	@Override
	public int delUserInquireAsk(int memberID){
		return mapper.delUserInquireAsk(memberID);
	}
	
}
