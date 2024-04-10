package br.com.uoutec.community.ediacaran.test.pub;

import java.io.Serializable;
import java.util.List;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.brandao.brutos.annotation.AcceptRequestType;
import org.brandao.brutos.annotation.Action;
import org.brandao.brutos.annotation.Controller;
import org.brandao.brutos.annotation.DetachedName;
import org.brandao.brutos.annotation.ResponseType;
import org.brandao.brutos.annotation.Transient;
import org.brandao.brutos.annotation.web.MediaTypes;
import org.brandao.brutos.annotation.web.RequestMethod;

@Singleton
@Controller(value="/data-table")
@AcceptRequestType(MediaTypes.APPLICATION_JSON)
@ResponseType(MediaTypes.APPLICATION_JSON)
public class DataTablePubResource {

	@Transient
	@Inject
	private EntityService entityService;

	@Action(value="/search")
	@RequestMethod("POST")
	public synchronized Serializable search(@DetachedName SearchRequest request){
		return searchExampleEntity(request);
	}

	@Action(value="/search-unknown-pages")
	@RequestMethod("POST")
	public synchronized Serializable searchWithoutPages(@DetachedName SearchRequest request){
		return searchExampleEntityWithoutPages(request);
	}
	
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
		
		if(request == null) {
			result = entityService.search(null, null, null, null, firstResult, resultPerPage); 
		}
		else {
			result = entityService.search(
					request.getMinID(), request.getMaxID(), request.getName(), 
					request.getGender(), firstResult, resultPerPage);
		}
		
		List<ExampleEntity> list = result.getList();

		int maxPages = 
				result.getMaxResults()/resultPerPage + ((double)result.getMaxResults() % (double)resultPerPage != 0? 1 : 0);
		
		return new SearchResult<ExampleEntity>(
				maxPages, 
				page, 
				false,
				list
		);
	}
	
	private synchronized SearchResult<ExampleEntity> searchExampleEntityWithoutPages(
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
		
		if(request == null) {
			result = entityService.search(null, null, null, null, firstResult, resultPerPage + 1); 
		}
		else {
			result = entityService.search(
					request.getMinID(), request.getMaxID(), request.getName(), 
					request.getGender(), firstResult, resultPerPage + 1);
		}
		
		List<ExampleEntity> list = result.getList();

		return new SearchResult<ExampleEntity>(
				-1, 
				page, 
				list.size() > resultPerPage,
				list.size() > resultPerPage? list.subList(0, list.size() - 1) :	list
		);
		
	}
	
}
