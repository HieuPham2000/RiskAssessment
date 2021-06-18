package dao;

import java.util.List;

import model.Risk;

public interface RiskDAO {

	void insert(Risk risk, List<Integer> assets);
	
	void updateInfo(Risk risk, List<Integer> assets);
	
	void updateAssessment(int id, int likelihood, int impact);
	
	void delete(int id);
	
	Risk get(int id);
	
	List<Risk> getAllRisksInSystem(int system_id);
	
	List<Risk> getRisksOfTrouble(int trouble_id);
}
