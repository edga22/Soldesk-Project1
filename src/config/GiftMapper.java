package config;

import domain.Gift;

public interface GiftMapper {
	public Gift[] getGifts();
	public Gift getGift(int giftID);
	
	public int addGift(Gift gift);
	public int updateGift(Gift gift);
	public int delGift(Gift gift);
}
