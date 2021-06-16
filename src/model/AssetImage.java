package model;

import java.util.List;

public class AssetImage {
	private int id;
	private int asset_id;
	private List<String> image_links;
	
	public AssetImage() {
		// TODO Auto-generated constructor stub
	}

	public AssetImage(int id, int asset_id, List<String> image_links) {
		super();
		this.id = id;
		this.asset_id = asset_id;
		this.image_links = image_links;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAsset_id() {
		return asset_id;
	}

	public void setAsset_id(int asset_id) {
		this.asset_id = asset_id;
	}

	public List<String> getImage_links() {
		return image_links;
	}

	public void setImage_links(List<String> image_links) {
		this.image_links = image_links;
	}

	@Override
	public String toString() {
		return "AssetImage [id=" + id + ", asset_id=" + asset_id + ", image_links=" + image_links + "]";
	}
	
	
}
