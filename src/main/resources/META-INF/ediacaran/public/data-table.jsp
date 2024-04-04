<%@taglib uri="http://java.sun.com/jsp/jstl/core"                 prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<ec:include uri="/includes/head.jsp"/>
</head>

<body>

	<ec:include uri="/includes/header.jsp"/>
	
	<section class="inner-headline">
		<ed:container>
			<ed:row>
				<ed:col size="4">
					<div class="inner-heading">
						<h2>Data table</h2>
					</div>
				</ed:col>
				<ed:col size="8">
					<ec:breadcrumb title="Components">
						<ec:breadcrumb-path icon="home" text="" lnk="#" />
						<ec:breadcrumb-path text="Data table" lnk="#" />
					</ec:breadcrumb>
				</ed:col>
			</ed:row>
		</ed:container>
	</section>

				    <script type="text/javascript">
				    	$.AppContext.dataTable = {};
				    	
				    	$.AppContext.dataTable.getDataTable = function ($target){
							
							if($target.getProperty('draggable')){
								return $target;
							}
							
							var i = 0;
					
							while($target !== 'undefined' && i < 1000 ){
								
								if($target.getProperty('data-table')){
									return $target;
								}
								
								$target = $target.getParent();
								i = i + 1;
							}
							
							return null;
						};
				    	
				    	$.AppContext.dataTable.applyPages = function($id, $page, $totalPages){
				    		$( "#" + $id ).find("div[class*=dataTablePagination]").each(function() {
				    			var $e = $(this);
				    			$e.html("");
				    			
				    			if($totalPages < $page){
				    				return;
				    			}
				    			
				    			if($totalPages == null || $totalPages == 0){
				    				return;
				    			}
				    			
				    			if($totalPages <= 10){
				    				
				    				for($i=1;$i<$totalPages;$i++){

				    					if($i == $page){
				    						$e.append($('<a href="#" class="active">' + $i + '</a>'));
				    					}
				    					else{
				    						$e.append($('<a href="#">' + $i + '</a>'));
				    					}

				    				}
				    				
				    			}
				    			else
				    			if($page <= 3){
				    				var $i;
				    				
				    				for($i=1;$i<=4;$i++){

				    					if($i == $page){
				    						$e.append($('<a href="#" class="active">' + $i + '</a>'));
				    					}
				    					else{
				    						$e.append($('<a href="#">' + $i + '</a>'));
				    					}

				    				}

		    						$e.append($('<span>...</span>'));
				    				
		    						$e.append($('<a href="#">' + ($totalPages - 3) + '</a>'));
		    						$e.append($('<a href="#">' + ($totalPages - 2) + '</a>'));
		    						$e.append($('<a href="#">' + ($totalPages - 1) + '</a>'));
		    						$e.append($('<a href="#">' + $totalPages + '</a>'));
				    			}
				    			else
				    			if($totalPages - $page < 3){
				    				var $i;
				    				
				    				$e.append($('<a href="#">1</a>'));
				    				$e.append($('<a href="#">2</a>'));
				    				$e.append($('<a href="#">3</a>'));
				    				$e.append($('<a href="#">4</a>'));
				    				$e.append($('<span>...</span>'));
		    						
				    				for($i=$totalPages - 3;$i<=$totalPages;$i++){

				    					if($i == $page){
				    						$e.append($('<a href="#" class="active">' + $i + '</a>'));
				    					}
				    					else{
				    						$e.append($('<a href="#">' + $i + '</a>'));
				    					}

				    				}
				    			}
				    			else{
				    				
				    				$e.append($('<a href="#">1</a>'));
				    				if($page - 3 != 1){
				    					$e.append($('<span>...</span>'));
				    				}
				    				$e.append($('<a href="#">' + ($page - 2) + '</a>'));
				    				$e.append($('<a href="#">' + ($page - 1) + '</a>'));
				    				$e.append($('<a href="#" class="active">' + $page + '</a>'));
				    				$e.append($('<a href="#">' + ($page + 1) + '</a>'));
				    				$e.append($('<a href="#">' + ($page + 2) + '</a>'));
				    				if($page + 3 != $totalPages){
				    					$e.append($('<span>...</span>'));
				    				}
				    				$e.append($('<a href="#">' + $totalPages + '</a>'));
		    						
				    			}
				    			
				    			$e.find("a").each(function() {
				    				var $lnk = $(this);
				    				$lnk.click(function(){
				    					var $p = $(this).text();
							    		$("#" + $id + " input[name=page]").val($p);
							    		$("#" + $id).submit();
							    		$("#" + $id + " input[name=page]").val("1");
				    				});
				    			});
				    			
				    		});
				    	};
				    	
				    	$.AppContext.dataTable.apply = function($id, $template){
				    		
				    		var $dataTableObj = $( "#" + $id );

				    		$dataTableObj.find("button[type=submit]").each(function() {
				    			var $e = $(this);
				    			$e.off("click");
				    		});

				    		$($dataTableObj).removeAttr('onsubmit');
				    		$($dataTableObj).unbind('submit');
				    		$($dataTableObj).submit(function (event) {
				    			
						    	event.preventDefault();

						    	var $e = $(this);
						    	var $resource = $e.attr("action");
						    	var $data = new FormData($e[0]);
						    	var $request = Object.fromEntries($data.entries());

	    					  	var $dta = $("#" + $id + " div[class*=dataTablePagination]");
						    	
	    					  	$dataTableObj.addClass("disabledDiv");
	    					  	
						    	$.AppContext.utils.postJson(
						    			$resource, 
						    			$request,
						    			function ($response){
						    				var $tag = $template($response);
											$tag = $($tag);
											
											$tag.each(function() {
												$(this).addClass("dataTableRow");
											});

									    	$e.find("div[class*=dataTableRow]").each(function() {
								    			var $dta = $(this);
								    			$dta.remove();
								    		});
											
						    				$tag.insertBefore($dta);
						    				$.AppContext.utils.enableActions($id);
				    					  	$.AppContext.dataTable.applyPages($id, $response.page, $response.maxPages);
				    					  	
				    					  	$dataTableObj.removeClass("disabledDiv");
						    			},
						    			function ($response){
						    				$dataTableObj.removeClass("disabledDiv");
						    			}
				    			);
							});				    		
				    		
				    	};
				    </script>
				    
    <section class="content">
		<ed:container>
			<ed:row>
				<ed:col size="12">
					<style>
					.pagination {
					  /*display: inline-block;*/
					}
					
					.pagination a {
					  color: black;
					  /*float: left;*/
					  padding: 8px 16px;
					  text-decoration: none;
					}
	
					.pagination span {
					  color: black;
					  padding: 8px 16px;
					  text-decoration: none;
					}
					
					.pagination a.active {
					  background-color: #4CAF50;
					  color: white;
					  border-radius: 5px;
					}
					
					.pagination a:hover:not(.active) {
					  background-color: #ddd;
					  border-radius: 5px;
					}
					
					.disabledDiv {
					    pointer-events: none;
					    opacity: 0.4;
					}
					</style>

					<ed:row>
						<ed:col size="12">
							<h3>Datatable row</h3>
						</ed:col>
					</ed:row>
					
					<ec:data-table action="${pageContext.request.contextPath}/data-table/search">
						<ed:row>
							<ed:col size="2">
					    		<ec:field-group>
				    			<ec:textfield name="minID" placeholder="min ID"/>
				    			<ec:textfield name="maxID" placeholder="max ID"/>
					    		</ec:field-group>
							</ed:col>
							<ed:col size="6">
				    			<ec:textfield name="name" placeholder="name" />
							</ed:col>
							<ed:col size="2">
				    			<ec:select name="gender">
				    				<ec:option value=""></ec:option>
				    				<ec:option value="Male">Male</ec:option>
				    				<ec:option value="Female">Female</ec:option>
				    			</ec:select>
							</ed:col>
							<ed:col size="2">
				    			<ec:button actionType="submit" label="Search"/>
							</ed:col>
						</ed:row>
						<ec:data-result var="response">
							<ec:forEach items="!{response.data}" var="item">
								<ed:row>
									<ed:col size="2">
										!{item.id}
									</ed:col>
									<ed:col size="6">
										!{item.name}
									</ed:col>
									<ed:col size="2">
										!{item.gender}
									</ed:col>
									<ed:col size="2">
										<a href="${pageContext.request.contextPath}/edit/!{item.id}/">Edit</a> |
										<a href="${pageContext.request.contextPath}/delete/!{item.id}/">Delete</a>
									</ed:col>
								</ed:row>
							</ec:forEach>						
						</ec:data-result>
					</ec:data-table>
					
					<ed:row>
						<ed:col size="12">
							<h3>Datatable col</h3>
						</ed:col>
					</ed:row>
					
					
					<ec:data-table action="${pageContext.request.contextPath}/data-table/search">
						<ed:row>
							<ed:col size="2">
					    		<ec:field-group>
				    			<ec:textfield name="minID" placeholder="min ID"/>
				    			<ec:textfield name="maxID" placeholder="max ID"/>
					    		</ec:field-group>
							</ed:col>
							<ed:col size="6">
				    			<ec:textfield name="name" placeholder="name" />
							</ed:col>
							<ed:col size="2">
				    			<ec:select name="gender">
				    				<ec:option value=""></ec:option>
				    				<ec:option value="Male">Male</ec:option>
				    				<ec:option value="Female">Female</ec:option>
				    			</ec:select>
							</ed:col>
							<ed:col size="2">
				    			<ec:button actionType="submit" label="Search"/>
							</ed:col>
						</ed:row>
						<ec:data-result var="response">
						<ed:row>
							<ec:forEach items="!{response.data}" var="item">
							<ed:col size="3">
								<ec:box>
									<ec:box-header>ID: !{item.id}</ec:box-header>
									<ec:box-body>
										<p>!{item.name}</p>
										<p>!{item.gender}</p>
									</ec:box-body>
									<ec:box-footer>
										<a href="${pageContext.request.contextPath}/edit/!{item.id}/">Edit</a> |
										<a href="${pageContext.request.contextPath}/delete/!{item.id}/">Delete</a>
									</ec:box-footer>
								</ec:box>
							</ed:col>
							</ec:forEach>						
						</ed:row>
						</ec:data-result>
					</ec:data-table>
					
					<ed:row>
						<ed:col size="12">
							<h3>Editable datatable</h3>
						</ed:col>
					</ed:row>
					
					<ec:data-table id="editableDataTable" action="${pageContext.request.contextPath}/data-table/search">
						<ed:row>
							<ed:col size="2">
					    		<ec:field-group>
				    			<ec:textfield name="minID" placeholder="min ID"/>
				    			<ec:textfield name="maxID" placeholder="max ID"/>
					    		</ec:field-group>
							</ed:col>
							<ed:col size="6">
				    			<ec:textfield name="name" placeholder="name" />
							</ed:col>
							<ed:col size="2">
				    			<ec:select name="gender">
				    				<ec:option value=""></ec:option>
				    				<ec:option value="Male">Male</ec:option>
				    				<ec:option value="Female">Female</ec:option>
				    			</ec:select>
							</ed:col>
							<ed:col size="2">
				    			<ec:button actionType="submit" label="Search"/>
							</ed:col>
						</ed:row>
					</ec:data-table>
					<ec:data-result from="editableDataTable" var="response">
						<ec:forEach items="!{response.data}" var="item">
							<ed:row>
								<ed:col size="2">
									!{item.id}
								</ed:col>
								<ed:col size="6">
									<ec:textfield name="name_!{item.id}" value="!{item.name}" />
								</ed:col>
								<ed:col size="2">
					    			<ec:select name="gender_!{item.id}">
					    				<ec:option value=""></ec:option>
					    				<ec:option value="Male" selected="!{item.gender == 'Male'}">Male</ec:option>
					    				<ec:option value="Female" selected="!{item.gender == 'Female'}">Female</ec:option>
					    			</ec:select>
								</ed:col>
								<ed:col size="2">
									<a href="${pageContext.request.contextPath}/edit/!{item.id}/">Save</a>
								</ed:col>
							</ed:row>
						</ec:forEach>						
					</ec:data-result>
					
				</ed:col>
			</ed:row>
		</ed:container>
    </section>
    
	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>