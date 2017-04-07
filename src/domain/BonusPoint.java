package domain;

import domain.Member;
import domain.Book;

public class BonusPoint{
	Member member = new Member();
	Book book = new Book();
	
	private int price = book.getPrice();
	private int bonusPoint = member.getBonusPoint();	
	
	public BonusPoint(){}	
	
	
	/*public BonusPoint(int price, int bonusPoint){
		this.price = book.getPrice();
		this.bonusPoint = member.getBonusPoint();
		
		bonusPoint = (int)(price * 0.1);		
	}*/
	
	
	
	
	
	
}
