package model;

public class Observation {
	
	private int id;
	private int threat_id;
	private int vulnerability_id;
	private int likelihood_level_id;
	private int impact_level_id;
	private int risk_level_id;
	private String created_time;
	private String modified_time;
	
	public Observation() {
		super();
	}

	public Observation(int id, int threat_id, int vulnerability_id) {
		super();
		this.id = id;
		this.threat_id = threat_id;
		this.vulnerability_id = vulnerability_id;
	}

	public Observation(int id, int threat_id, int vulnerability_id, String created_time, String modified_time) {
		super();
		this.id = id;
		this.threat_id = threat_id;
		this.vulnerability_id = vulnerability_id;
		this.created_time = created_time;
		this.modified_time = modified_time;
	}

	public Observation(int id, int threat_id, int vulnerability_id, int likelihood_level_id, int impact_level_id,
			int risk_level_id, String created_time, String modified_time) {
		super();
		this.id = id;
		this.threat_id = threat_id;
		this.vulnerability_id = vulnerability_id;
		this.likelihood_level_id = likelihood_level_id;
		this.impact_level_id = impact_level_id;
		this.risk_level_id = risk_level_id;
		this.created_time = created_time;
		this.modified_time = modified_time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getThreat_id() {
		return threat_id;
	}

	public void setThreat_id(int threat_id) {
		this.threat_id = threat_id;
	}

	public int getVulnerability_id() {
		return vulnerability_id;
	}

	public void setVulnerability_id(int vulnerability_id) {
		this.vulnerability_id = vulnerability_id;
	}

	public int getLikelihood_level_id() {
		return likelihood_level_id;
	}

	public void setLikelihood_level_id(int likelihood_level_id) {
		this.likelihood_level_id = likelihood_level_id;
	}

	public int getImpact_level_id() {
		return impact_level_id;
	}

	public void setImpact_level_id(int impact_level_id) {
		this.impact_level_id = impact_level_id;
	}

	public int getRisk_level_id() {
		return risk_level_id;
	}

	public void setRisk_level_id(int risk_level_id) {
		this.risk_level_id = risk_level_id;
	}

	public String getCreated_time() {
		return created_time;
	}

	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}

	public String getModified_time() {
		return modified_time;
	}

	public void setModified_time(String modified_time) {
		this.modified_time = modified_time;
	}

	@Override
	public String toString() {
		return "Observation [id=" + id + ", threat_id=" + threat_id + ", vulnerability_id=" + vulnerability_id
				+ ", likelihood_level_id=" + likelihood_level_id + ", impact_level_id=" + impact_level_id
				+ ", risk_level_id=" + risk_level_id + ", created_time=" + created_time + ", modified_time="
				+ modified_time + "]";
	}
	
	
}
