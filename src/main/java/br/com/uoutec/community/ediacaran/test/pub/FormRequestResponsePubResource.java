package br.com.uoutec.community.ediacaran.test.pub;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.brandao.brutos.annotation.AcceptRequestType;
import org.brandao.brutos.annotation.Action;
import org.brandao.brutos.annotation.Basic;
import org.brandao.brutos.annotation.Controller;
import org.brandao.brutos.annotation.DetachedName;
import org.brandao.brutos.annotation.MappingTypes;
import org.brandao.brutos.annotation.ResponseType;
import org.brandao.brutos.annotation.Result;
import org.brandao.brutos.annotation.Transient;
import org.brandao.brutos.annotation.View;
import org.brandao.brutos.annotation.web.MediaTypes;
import org.brandao.brutos.annotation.web.RequestMethod;

@Singleton
@Controller(value="/form-request-response")
public class FormRequestResponsePubResource {

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

	@Action(value="/details/json/{id}")
	@Result(value="response", mappingType=MappingTypes.VALUE)
	@ResponseType(MediaTypes.APPLICATION_JSON)
	public Serializable loadJson(@Basic(bean= "id") Integer id){
		
		SearchRequest request = new SearchRequest();
		request.setMinID(id);
		request.setMaxID(id);
		
		SearchResult<ExampleEntity> result = searchExampleEntity(request);
		
		return result.getData().isEmpty()? null : result.getData().get(0);
	}

	@Action(value="/details/html/{id}")
	@View(value="/load-html.jsp", resolved=true)
	@Result(value="item", mappingType=MappingTypes.VALUE)
	public ExampleEntity loadHTML(@Basic(bean= "id") Integer id){
		
		SearchRequest request = new SearchRequest();
		request.setMinID(id);
		request.setMaxID(id);
		
		SearchResult<ExampleEntity> result = searchExampleEntity(request);
		
		return result.getData().isEmpty()? null : result.getData().get(0);
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
				false,
				firstResult > list.size()? 
						Collections.EMPTY_LIST :
						list.subList(firstResult, lastResult > list.size()? list.size() : lastResult)
		);
	}
	
}
