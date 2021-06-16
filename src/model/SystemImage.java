package model;

import java.util.List;

public class SystemImage {
	private int id;
	private int system_id;
	private List<String> image_links;
	
	public SystemImage() {
		// TODO Auto-generated constructor stub
	}

	public SystemImage(int id, int system_id, List<String> image_links) {
		super();
		this.id = id;
		this.system_id = system_id;
		this.image_links = image_links;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSystem_id() {
		return system_id;
	}

	public void setSystem_id(int system_id) {
		this.system_id = system_id;
	}

	public List<String> getImage_links() {
		return image_links;
	}

	public void setImage_links(List<String> image_links) {
		this.image_links = image_links;
	}

	@Override
	public String toString() {
		return "SystemImage [id=" + id + ", system_id=" + system_id + ", image_links=" + image_links + "]";
	}
	
	
}
