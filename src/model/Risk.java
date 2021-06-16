package model;

public class Risk {
	
	private int id;
	private String short_description;
	private String flaw;
	private String threat;
	private int threat_type;
	private String solution;
	private int likelihood_level_id;
	private int impact_level_id;
	private int risk_level_id;
	private String created_time;
	private String modified_time;
	
	public Risk() {
		// TODO Auto-generated constructor stub
	}

	public Risk(int id, String short_description, String flaw, String threat, int threat_type, String solution,
			int likelihood_level_id, int impact_level_id, int risk_level_id, String created_time,
			String modified_time) {
		super();
		this.id = id;
		this.short_description = short_description;
		this.flaw = flaw;
		this.threat = threat;
		this.threat_type = threat_type;
		this.solution = solution;
		this.likelihood_level_id = likelihood_level_id;
		this.impact_level_id = impact_level_id;
		this.risk_level_id = risk_level_id;
		this.created_time = created_time;
		this.modified_time = modified_time;
	}

	public Risk(int id, String short_description, String flaw, String threat, int threat_type) {
		super();
		this.id = id;
		this.short_description = short_description;
		this.flaw = flaw;
		this.threat = threat;
		this.threat_type = threat_type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShort_description() {
		return short_description;
	}

	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}

	public String getFlaw() {
		return flaw;
	}

	public void setFlaw(String flaw) {
		this.flaw = flaw;
	}

	public String getThreat() {
		return threat;
	}

	public void setThreat(String threat) {
		this.threat = threat;
	}

	public int getThreat_type() {
		return threat_type;
	}

	public void setThreat_type(int threat_type) {
		this.threat_type = threat_type;
	}

	public String getSolution() {
		return solution;
	}

	public void setSolution(String solution) {
		this.solution = solution;
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
		return "Risk [id=" + id + ", short_description=" + short_description + ", flaw=" + flaw + ", threat=" + threat
				+ ", threat_type=" + threat_type + ", solution=" + solution + ", likelihood_level_id="
				+ likelihood_level_id + ", impact_level_id=" + impact_level_id + ", risk_level_id=" + risk_level_id
				+ ", created_time=" + created_time + ", modified_time=" + modified_time + "]";
	}
	
	
	
	
}
