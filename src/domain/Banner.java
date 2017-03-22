package domain;

public class Banner {
	private int bannerID;
	private String bannerType;
	private String bannerName;
	private String text;
	private String image;
	private String imageText;
	private String link;
	private String linkType;
	private int used;
	public int getBannerID() {
		return bannerID;
	}
	public void setBannerID(int bannerID) {
		this.bannerID = bannerID;
	}
	public String getBannerType() {
		return bannerType;
	}
	public void setBannerType(String bannerType) {
		this.bannerType = bannerType;
	}
	public String getBannerName() {
		return bannerName;
	}
	public void setBannerName(String bannerName) {
		this.bannerName = bannerName;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getImageText() {
		return imageText;
	}
	public void setImageText(String imageText) {
		this.imageText = imageText;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getLinkType() {
		return linkType;
	}
	public void setLinkType(String linkType) {
		this.linkType = linkType;
	}
	public int getUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
}
