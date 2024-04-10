package br.com.uoutec.community.ediacaran.test.pub;

import java.io.Serializable;

public class ExampleEntity implements Serializable {
	
	private static final long serialVersionUID = 886576347974786084L;

	private int id;
	
	private String name;
	
	private String gender;

	public ExampleEntity(int id, String name, String gender) {
		this.id = id;
		this.name = name;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ExampleEntity other = (ExampleEntity) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
}
