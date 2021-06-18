package dao;

import java.util.List;

import model.Trouble;


public interface TroubleDAO {
	void insert(Trouble trouble, List<Integer> assets, List<Integer> risks);
	
	void update(Trouble trouble, List<Integer> assets, List<Integer> risks);
	
	void delete(int id);
	
	Trouble get(int id);
	
	List<Trouble> getAllInSystem(int system_id);
}
