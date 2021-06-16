package model;

public class LikelihoodLevel {

	private int id;
	private String level;
	private int score;
	private String color;
	
	public LikelihoodLevel() {
		// TODO Auto-generated constructor stub
	}

	public LikelihoodLevel(int id, String level, int score, String color) {
		super();
		this.id = id;
		this.level = level;
		this.score = score;
		this.color = color;
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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public String toString() {
		return "LikelihoodLevel [id=" + id + ", level=" + level + ", score=" + score + ", color=" + color + "]";
	}
	
	
	
	
}
