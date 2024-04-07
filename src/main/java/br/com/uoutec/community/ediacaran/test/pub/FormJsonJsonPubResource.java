package br.com.uoutec.community.ediacaran.test.pub;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.brandao.brutos.annotation.AcceptRequestType;
import org.brandao.brutos.annotation.Action;
import org.brandao.brutos.annotation.Controller;
import org.brandao.brutos.annotation.DetachedName;
import org.brandao.brutos.annotation.MappingTypes;
import org.brandao.brutos.annotation.ResponseType;
import org.brandao.brutos.annotation.Result;
import org.brandao.brutos.annotation.Transient;
import org.brandao.brutos.annotation.View;
import org.brandao.brutos.annotation.web.MediaTypes;
import org.brandao.brutos.annotation.web.RequestMethod;

import br.com.uoutec.community.ediacaran.test.pub.EntityService.EntityResult;
import br.com.uoutec.community.ediacaran.test.pub.EntityService.ExampleEntity;

@Singleton
@Controller(value="/form-request-response")
public class FormJsonJsonPubResource {

	@Transient
	@Inject
	private EntityService entityService;

	@Action(value="/search-json-json")
	@RequestMethod("POST")
	@AcceptRequestType(MediaTypes.APPLICATION_JSON)
	@ResponseType(MediaTypes.APPLICATION_JSON)
	public synchronized Serializable searchJsonJson(@DetachedName SearchRequest request){
		return searchExampleEntity(request);
	}

	@Action(value="/search-json-html")
	@View(value="/search-json-html-response.jsp", resolved=true)
	@Result(value="response", mappingType=MappingTypes.VALUE)
	@RequestMethod("POST")
	@AcceptRequestType(MediaTypes.APPLICATION_JSON)
	public synchronized SearchResult<ExampleEntity> searchJsonHtml(@DetachedName SearchRequest request){
		return searchExampleEntity(request);
	}

	@Action(value="/search-urlencoded-json")
	@RequestMethod("POST")
	@ResponseType(MediaTypes.APPLICATION_JSON)
	public synchronized Serializable searchURLencodedJson(@DetachedName SearchRequest request){
		return searchExampleEntity(request);
	}

	@Action(value="/search-urlencoded-html")
	@View(value="/search-json-html-response.jsp", resolved=true)
	@Result(value="response", mappingType=MappingTypes.VALUE)
	@RequestMethod("POST")
	public synchronized Serializable searchURLencodedHTML(@DetachedName SearchRequest request){
		return searchExampleEntity(request);
	}
	
	
	@SuppressWarnings("unchecked")
	private synchronized SearchResult<ExampleEntity> searchExampleEntity(
			SearchRequest request){

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
		
		EntityResult result;
		int firstResult = resultPerPage*(page - 1);
		int lastResult = firstResult + resultPerPage;
		
		if(request == null) {
			result = entityService.search(null, null, null, null, firstResult, lastResult); 
		}
		else {
			result = entityService.search(
					request.getMinID(), request.getMaxID(), request.getName(), 
					request.getGender(), firstResult, lastResult);
		}
		
		List<ExampleEntity> list = result.getList();

		int maxPages = 
				list.size()/resultPerPage + ((double)list.size() % (double)resultPerPage != 0? 1 : 0);
		
		return new SearchResult<ExampleEntity>(
				maxPages, 
				page, 
				firstResult > list.size()? 
						Collections.EMPTY_LIST :
						list.subList(firstResult, lastResult > list.size()? list.size() : lastResult)
		);
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
		
		private List<T> data;

		public SearchResult(int maxPages, int page, List<T> data) {
			super();
			this.maxPages = maxPages;
			this.page = page;
			this.data = data;
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
		
	}
}
