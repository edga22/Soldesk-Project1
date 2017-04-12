package dao;

import config.EventMapper;
import config.Factory;
import domain.Event;

public class DbBasedEventDao implements EventDao {
	private EventMapper mapper = null;
	
	public DbBasedEventDao(){
		mapper = Factory.getMapper(EventMapper.class);		
	}
	
	public Event[] getEvents(){
		return mapper.getEvents();
	}
	public Event getEvent(int eventID){
		return mapper.getEvent(eventID);
	}
	public int getIdEvent(String eventName){
		return mapper.getIdEvent(eventName);
	}
	
	public Event[] getNameEvents(String eventName){
		return mapper.getNameEvents(eventName);
	}
	
	public int addEvent(Event event){
		return mapper.addEvent(event);
	}
	public int updateEvent(Event event){
		return mapper.updateEvent(event);
	}
	public int delEvent(Event event){
		return mapper.delEvent(event);
	}
}
