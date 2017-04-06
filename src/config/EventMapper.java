package config;

import domain.Event;

public interface EventMapper {
	public Event[] getEvents();
	public Event getEvent(int eventID);
	
	public int addEvent(Event event);
	public int updateEvent(Event event);
	public int delEvent(Event event);	
}
