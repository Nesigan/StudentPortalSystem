package votingsystem.domain;

public class Vote {
	private String username,votes;
	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	int scmCount,b3dCount,biCount;

	public int getSCMCount() {
		return scmCount;
	}

	public void setSCMCount(int scmCount) {
		this.scmCount = scmCount;
	}

	public int getB3DCount() {
		return b3dCount;
	}

	public void setB3DCount(int b3dCount) {
		this.b3dCount = b3dCount;
	}

	public int getBICount() {
		return biCount;
	}

	public void setBICount(int biCount) {
		this.biCount = biCount;
	}

	public Vote() {
		// TODO Auto-generated constructor stub
	}

	public String getVotes() {
		return votes;
	}

	public void setVotes(String votes) {
		this.votes = votes;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
