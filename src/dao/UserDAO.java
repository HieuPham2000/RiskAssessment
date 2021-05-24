package dao;

import model.User;

public interface UserDAO {
	void insert(User user); 
	 
	void update(User user); 
	
	void delete(int id); 
 
	User get(int id); 
	 
	User get(String username);
	
	User get(String username, String password);
}
