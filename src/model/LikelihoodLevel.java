package model;

public class LikelihoodLevel {

	private int id;
	private String level;
	private double score;
	
	public LikelihoodLevel(int id, String level, double score) {
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

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "LikelihoodLevel [id=" + id + ", level=" + level + ", score=" + score + "]";
	}
	
	
}
