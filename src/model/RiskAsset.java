package model;

import java.util.List;

public class RiskAsset {
	private int id;
	private Risk risk;
	private List<Asset> asset;
	
	public RiskAsset() {
		// TODO Auto-generated constructor stub
	}

	public RiskAsset(int id, Risk risk, List<Asset> asset) {
		super();
		this.id = id;
		this.risk = risk;
		this.asset = asset;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Risk getRisk() {
		return risk;
	}

	public void setRisk(Risk risk) {
		this.risk = risk;
	}

	public List<Asset> getAsset() {
		return asset;
	}

	public void setAsset(List<Asset> asset) {
		this.asset = asset;
	}

	@Override
	public String toString() {
		return "RiskAsset [id=" + id + ", risk=" + risk + ", asset=" + asset + "]";
	}
	
	
}
