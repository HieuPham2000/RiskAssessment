package model;

import java.util.List;

public class TroubleAsset {
	private int id;
	private int trouble_id;
	private List<Integer> asset;
	
	public TroubleAsset() {
		// TODO Auto-generated constructor stub
	}

	public TroubleAsset(int id, int trouble_id, List<Integer> asset) {
		super();
		this.id = id;
		this.trouble_id = trouble_id;
		this.asset = asset;
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

	public List<Integer> getAsset() {
		return asset;
	}

	public void setAsset(List<Integer> asset) {
		this.asset = asset;
	}

	@Override
	public String toString() {
		return "TroubleAsset [id=" + id + ", trouble_id=" + trouble_id + ", asset=" + asset + "]";
	}
	
	
}
