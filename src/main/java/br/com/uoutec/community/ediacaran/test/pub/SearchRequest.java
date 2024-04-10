package br.com.uoutec.community.ediacaran.test.pub;

import java.io.Serializable;

public class SearchRequest implements Serializable{
	
	private static final long serialVersionUID = 2549319270886774890L;

	private Integer minID;

	private Integer maxID;
	
	private String name;
	
	private String gender;

	private Integer page;
	
	private Integer resultPerPage;
	
	public Integer getMinID() {
		return minID;
	}

	public void setMinID(Integer minID) {
		this.minID = minID;
	}

	public Integer getMaxID() {
		return maxID;
	}

	public void setMaxID(Integer maxID) {
		this.maxID = maxID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getResultPerPage() {
		return resultPerPage;
	}

	public void setResultPerPage(Integer resultPerPage) {
		this.resultPerPage = resultPerPage;
	}

}
