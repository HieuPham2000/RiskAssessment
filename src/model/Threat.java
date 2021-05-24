package model;

public class Threat {
	
	private int id;
	private String name;
	private String type;
	private String motivation;
	private String action;
	
	public Threat() {
		super();
	}

	public Threat(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public Threat(int id, String name, String type, String motivation, String action) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.motivation = motivation;
		this.action = action;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMotivation() {
		return motivation;
	}

	public void setMotivation(String motivation) {
		this.motivation = motivation;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	@Override
	public String toString() {
		return "Threat [id=" + id + ", name=" + name + ", type=" + type + ", motivation=" + motivation + ", action="
				+ action + "]";
	}
	
	
	
	
}
