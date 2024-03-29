package br.com.uoutec.community.ediacaran.test.pub;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Singleton;

import org.brandao.brutos.annotation.AcceptRequestType;
import org.brandao.brutos.annotation.Action;
import org.brandao.brutos.annotation.Basic;
import org.brandao.brutos.annotation.Controller;
import org.brandao.brutos.annotation.DetachedName;
import org.brandao.brutos.annotation.ResponseType;
import org.brandao.brutos.annotation.web.MediaTypes;
import org.brandao.brutos.annotation.web.RequestMethod;

@Singleton
@Controller(value="/data-table")
@AcceptRequestType(MediaTypes.APPLICATION_JSON)
@ResponseType(MediaTypes.APPLICATION_JSON)
public class DataTablePubResource {

	private int index = 1;
	
	private List<ExampleEntity> data = Arrays.asList(
			new ExampleEntity(index++, "jose antonio", "Male"),
			new ExampleEntity(index++, "Cara Hardy", "Male"),
			new ExampleEntity(index++, "Jayceon Kent", "Female"),
			new ExampleEntity(index++, "Jazmine Villa", "Male"),
			new ExampleEntity(index++, "Clay Moreno", "Male"),
			new ExampleEntity(index++, "Mary Ware", "Female"),
			new ExampleEntity(index++, "Tadeo Dorsey", "Male"),
			new ExampleEntity(index++, "Addyson Durham", "Female"),
			new ExampleEntity(index++, "Kellen Meza", "Male"),
			new ExampleEntity(index++, "Rosa Bentley", "Female"),
			new ExampleEntity(index++, "Randy Levy", "Male"),
			new ExampleEntity(index++, "Flora Spence", "Male"),
			new ExampleEntity(index++, "Cillian Fisher", "Female"),
			new ExampleEntity(index++, "Arya Johnston", "Male"),
			new ExampleEntity(index++, "Felix Smith", "Female"),
			new ExampleEntity(index++, "Olivia Rich", "Female"),
			new ExampleEntity(index++, "Miller Nunez", "Male"),
			new ExampleEntity(index++, "Mya Rios", "Male"),
			new ExampleEntity(index++, "Israel Benson", "Male"),
			new ExampleEntity(index++, "Collins Huang", "Male"),
			new ExampleEntity(index++, "Ayaan Madden", "Male"),
			new ExampleEntity(index++, "Violette Banks", "Male"),
			new ExampleEntity(index++, "Martin Potts", "Male"),
			new ExampleEntity(index++, "Ellison Neal", "Male"),
			new ExampleEntity(index++, "Kane Stafford", "Male"),
			new ExampleEntity(index++, "Bridget Costa", "Male"),
			new ExampleEntity(index++, "Kenji Reyes", "Female"),
			new ExampleEntity(index++, "Audrey Meza", "Male"),
			new ExampleEntity(index++, "Lucian McLaughlin", "Female"),
			new ExampleEntity(index++, "Stephanie Potts", "Male"),
			new ExampleEntity(index++, "Alfred Castaneda", "Male"),
			new ExampleEntity(index++, "Keira Schwartz", "Female"),
			new ExampleEntity(index++, "Edwin Knight", "Male"),
			new ExampleEntity(index++, "Gracie Schmidt", "Female"),
			new ExampleEntity(index++, "Zayden McCall", "Male"),
			new ExampleEntity(index++, "Kai Gregory", "Male"),
			new ExampleEntity(index++, "Travis Cuevas", "Male")
	);

	@SuppressWarnings("unchecked")
	@Action(value="/search")
	@RequestMethod("POST")
	public synchronized Serializable search(@DetachedName SearchRequest request){

		int page;
		
		if(request == null || request.getPage() == null) {
			page = 1;
		}
		else {
			page = request.getPage();
		}
		
		int resultPerPage;
		
		if(request == null || request.getResultPerPage() == null) {
			resultPerPage = 10;
		}
		else {
			resultPerPage = request.getResultPerPage();
		}
		
		List<ExampleEntityResult> list = data.stream().filter((e)->{
			
			if(request == null) {
				return true;
			}
			
			if(request.getMinID() != null && e.getId() < request.getMinID()) {
				return false;
			}

			if(request.getMaxID() != null && e.getId() > request.getMaxID()) {
				return false;
			}
			
			if(request.getName() != null && !e.getName().toLowerCase().contains(request.getName().toLowerCase())) {
				return false;
			}
			
			if(request.getGender() != null && !e.getGender().toLowerCase().equals(request.getGender().toLowerCase())) {
				return false;
			}
			
			return true;
		}).map((e)->{
			return new ExampleEntityResult(e.getId(), e.getName(), e.getGender(), "Edit | Delete");
		}).collect(Collectors.toList());

		int firstResult = resultPerPage*(page - 1);
		int lastResult = firstResult + resultPerPage;
		int maxPages = list.size()/resultPerPage + ((double)list.size() % (double)resultPerPage != 0? 1 : 0);
		
		return new SearchResult<ExampleEntityResult>(
				maxPages, 
				page, 
				new String[] {"id", "name", "gender", "actions"},
				firstResult > list.size()? 
						Collections.EMPTY_LIST :
						list.subList(firstResult, lastResult > list.size()? list.size() : lastResult)
		);
	}

	public static class ExampleEntityResult extends ExampleEntity{

		private static final long serialVersionUID = -547621600520808594L;

		private String actions;
		
		public ExampleEntityResult(int id, String name, String gender, String actions) {
			super(id, name, gender);
			this.actions = actions;
		}

		public String getActions() {
			return actions;
		}

		public void setActions(String actions) {
			this.actions = actions;
		}
		
	}
	
	public static class ExampleEntity implements Serializable {
		
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
		
	}

	public static class SearchRequest implements Serializable {
	
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
	
	public static class SearchResult<T> implements Serializable {
		
		private static final long serialVersionUID = 8112064051350456421L;

		private int maxPages;
		
		private int page;
		
		private String[] columnsName;
		
		private List<T> data;

		public SearchResult(int maxPages, int page, String[] columnsName, List<T> data) {
			super();
			this.maxPages = maxPages;
			this.page = page;
			this.data = data;
			this.columnsName = columnsName;
		}

		public int getMaxPages() {
			return maxPages;
		}

		public void setMaxPages(int maxPages) {
			this.maxPages = maxPages;
		}

		public int getPage() {
			return page;
		}

		public void setPage(int page) {
			this.page = page;
		}

		public List<T> getData() {
			return data;
		}

		public void setData(List<T> data) {
			this.data = data;
		}

		public String[] getColumnsName() {
			return columnsName;
		}

		public void setColumnsName(String[] columnsName) {
			this.columnsName = columnsName;
		}
		
	}
}
