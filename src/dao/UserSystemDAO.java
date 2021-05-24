package dao;

import java.util.List;

import model.UserSystem;

public interface UserSystemDAO {
	void insert(UserSystem system); 
	 
	void update(UserSystem system); 
	
	void delete(int id); 
 
	List<UserSystem> get(int user_id); 
	
	UserSystem getUserSystem(int id); 
	 	
}
