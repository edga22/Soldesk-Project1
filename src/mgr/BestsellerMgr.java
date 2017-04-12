package mgr;

import domain.OrderDetail;

public class BestsellerMgr {
	public void reverse(OrderDetail[] order){
		int left  = 0;
	    int right = order.length - 1;

	    while (left < right) {
	      OrderDetail temp = order[left];
	      order[left]  = order[right];
	      order[right] = temp;

	      left++; right--;
	    }
	}
}
