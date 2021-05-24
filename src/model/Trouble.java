package model;

public class Trouble {

	private int id;
	private String short_description;
	private String detail;
	private String created_time;
	private String modified_time;
	
	public Trouble(int id, String short_description, String detail, String created_time, String modified_time) {
		super();
		this.id = id;
		this.short_description = short_description;
		this.detail = detail;
		this.created_time = created_time;
		this.modified_time = modified_time;
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

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
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
		return "Trouble [id=" + id + ", short_description=" + short_description + ", detail=" + detail
				+ ", created_time=" + created_time + ", modified_time=" + modified_time + "]";
	}
	
}
