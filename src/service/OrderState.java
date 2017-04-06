package service;

public class OrderState {
	String state;

	public OrderState() {
	}	
	
	public String change(int number){
		switch(number){
		case 1: state = "입금확인중"; break;
		case 2: state = "배송준비중"; break;
		case 3: state = "배송시작"; break;
		case 4: state = "배송완료"; break;
		case 5: state = "완료";
		}		
		return state;
	}

}
