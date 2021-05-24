package model;

public class UserSystem {
	private int id;
	private String name;
	private String description;
	private int user_id;
	private String created_time;
	private String modified_time;
	
	public UserSystem() {
		// TODO Auto-generated constructor stub
	}
		
	public UserSystem(int id, String name, String description, int user_id) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.user_id = user_id;
	}


	public UserSystem(int id, String name, String description, int user_id, String created_time, String modified_time) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.user_id = user_id;
		this.created_time = created_time;
		this.modified_time = modified_time;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
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
		return "System [id=" + id + ", name=" + name + ", description=" + description + ", user_id=" + user_id
				+ ", created_time=" + created_time + ", modified_time=" + modified_time + "]";
	}
	
	
	
	
}
