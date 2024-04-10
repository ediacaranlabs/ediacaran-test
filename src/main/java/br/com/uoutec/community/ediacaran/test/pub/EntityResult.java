package br.com.uoutec.community.ediacaran.test.pub;

import java.util.List;

public class EntityResult {
	
	private int maxResults;
	
	private List<ExampleEntity> list;

	public EntityResult(int maxResults, List<ExampleEntity> list) {
		super();
		this.maxResults = maxResults;
		this.list = list;
	}

	public int getMaxResults() {
		return maxResults;
	}

	public List<ExampleEntity> getList() {
		return list;
	}

}
