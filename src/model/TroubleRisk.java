package model;

import java.util.List;

public class TroubleRisk {
	private int id;
	private int trouble_id;
	private List<Integer> risk;
	
	public TroubleRisk() {
		// TODO Auto-generated constructor stub
	}

	public TroubleRisk(int id, int trouble_id, List<Integer> risk) {
		super();
		this.id = id;
		this.trouble_id = trouble_id;
		this.risk = risk;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTrouble_id() {
		return trouble_id;
	}

	public void setTrouble_id(int trouble_id) {
		this.trouble_id = trouble_id;
	}

	public List<Integer> getRisk() {
		return risk;
	}

	public void setRisk(List<Integer> risk) {
		this.risk = risk;
	}

	@Override
	public String toString() {
		return "TroubleRisk [id=" + id + ", trouble_id=" + trouble_id + ", risk=" + risk + "]";
	}
	
	
}
