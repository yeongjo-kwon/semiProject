package com.semiproj.writer.model;

public class WriterVO {
	private int wrno;
	private String name;
	private String intro;
	private String photoFileName;
	private String photoOriginFileName;
	
	
	public WriterVO() {
		super();
	}
	public WriterVO(int wrno, String name, String intro, String photoFileName, String photoOriginFileName) {
		super();
		this.wrno = wrno;
		this.name = name;
		this.intro = intro;
		this.photoFileName = photoFileName;
		this.photoOriginFileName = photoOriginFileName;
	}
	public int getWrno() {
		return wrno;
	}
	public void setWrno(int wrno) {
		this.wrno = wrno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getPhotoFileName() {
		return photoFileName;
	}
	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}
	public String getPhotoOriginFileName() {
		return photoOriginFileName;
	}
	public void setPhotoOriginFileName(String photoOriginFileName) {
		this.photoOriginFileName = photoOriginFileName;
	}
	@Override
	public String toString() {
		return "WriterVO [wrno=" + wrno + ", name=" + name + ", intro=" + intro + ", photoFileName=" + photoFileName
				+ ", photoOriginFileName=" + photoOriginFileName + "]";
	}
	
	
}
