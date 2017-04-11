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
	
	public int updatePoint(Member point){
		return mapper.updatePoint(point);
	}
	
	public int delMember(int MemberID){
		return mapper.delMember(MemberID);
	}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	public Member idCheck(Member email){
=======
	public boolean idCheck(Member email){
>>>>>>> 박원서 ID 중복 되면 회원가입 불가능 완료
		return mapper.idCheck(email);
	}
=======
>>>>>>> 송성우 마이페이지
=======
>>>>>>> 송성우 마이페이지
	public Member getoutMember(Member psw){
		return mapper.getoutMember(psw);
	}
}
