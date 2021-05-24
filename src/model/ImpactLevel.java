package model;

public class ImpactLevel {

	private int id;
	private String level;
	private int score;
	
	public ImpactLevel(int id, String level, int score) {
		super();
		this.id = id;
		this.level = level;
		this.score = score;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "ImpactLevel [id=" + id + ", level=" + level + ", score=" + score + "]";
	}
	
	
	
}
