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

    <section class="content">
		<ed:container>
			<ed:row>
				<ed:col size="12">
				<style>
				.pagination {
				  display: inline-block;
				}
				
				.pagination a {
				  color: black;
				  float: left;
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
				</style>				
					<ec:form id="testDataTable" method="POST" action="${pageContext.request.contextPath}/data-table/search">
					<input type="hidden" name="page" value="1">
					<input type="hidden" name="resultPerPage" value="10">
					<ed:row classStyle="dataTableStart">
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
			    				<ec:option value="" ></ec:option>
			    				<ec:option value="Male">Male</ec:option>
			    				<ec:option value="Female">Female</ec:option>
			    			</ec:select>
						</ed:col>
						<ed:col size="2">
				    			<ec:button actionType="submit" label="Search"/>
						</ed:col>
					</ed:row>
					<ed:row >
						<ed:col align="center">
							<div class="pagination">
							  <a href="#">&laquo;</a>
							  <a href="#">1</a>
							  <a href="#">2</a>
							  <a href="#">|</a>
							  <a href="#">3</a>
							  <a href="#">4</a>
							  <a href="#">&raquo;</a>
							</div>						
						</ed:col>
					</ed:row>
				    </ec:form>
				    <script type="text/javascript">
				    	$.AppContext.dataTable = {};
				    	
				    	$.AppContext.dataTable.apply = function($id, $rowTemplate, $colTemplate){
				    		
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

						    	$e.find("div[class*=dataTableRow]").each(function() {
					    			var $dta = $(this);
					    			$dta.remove();
					    		});
						    	
						    	$.AppContext.utils.postJson(
						    			$resource, 
						    			$request,
						    			function ($response){
						    				
						    				var $columnsMap = $response.columnsName;
						    				var $list = $response.data;
						    				var $result = "";
						    				
						    				for (var $o of $list) {
						    					  var $i;
						    					  var $colsSTR = "";
						    					  
						    					  for($i=0;$i<$columnsMap.length;$i++){
						    						  var $columnName = $columnsMap[$i];
						    						  var $columnTemplate = $colTemplate[$i];
						    						  $colsSTR += $columnTemplate.replace("{{value}}", $o[$columnName]);
						    					  }
						    					  
						    					  var $rowSTR = $rowTemplate.replace("{{value}}", $colsSTR);
						    					  $result += $rowSTR;
					    					}
						    				
				    					  	$dataTableObj.find("div[class*=dataTableStart]").each(function() {
									    			var $e = $(this);
									    			$e.after($result);
								    		});
						    				
						    			}
				    			);
							});				    		
				    		
				    	};
				    </script>
					<script type="text/javascript">
						$.AppContext.onload(function(){
							var $dataTableRowTemplate = '<div id="rowtagcomponent_ffffffff8b880ca5" class="row dataTableRow">{{value}}</div>';
							var $dataTableColsTemplate = [
					    		'<div id="coltagcomponent_ffffffff8b880ca6" class="col-sm-12 col-md-12 col-lg-2 col-xl-2     ">{{value}}</div>',
					    		'<div id="coltagcomponent_ffffffff8b880ca7" class="col-sm-12 col-md-12 col-lg-6 col-xl-6     ">{{value}}</div>',
					    		'<div id="coltagcomponent_ffffffff8b880ca8" class="col-sm-12 col-md-12 col-lg-2 col-xl-2     ">{{value}}</div>',
					    		'<div id="coltagcomponent_ffffffff8b880ca9" class="col-sm-12 col-md-12 col-lg-2 col-xl-2     ">{{value}}</div>'
					    	];
							/*
					    	var $dataTableRowTemplate = ' <ed:row classStyle="dataTableRow">{{value}}</ed:row>';
					    	var $dataTableColsTemplate = [
					    		'<ed:col size="2">{{value}}</ed:col>',
					    		'<ed:col size="6">{{value}}</ed:col>',
					    		'<ed:col size="2">{{value}}</ed:col>',
					    		'<ed:col size="2">{{value}}</ed:col>'
					    	];
							*/
							
							$.AppContext.dataTable.apply("testDataTable", $dataTableRowTemplate, $dataTableColsTemplate);
						});
					</script>				    
				</ed:col>
			</ed:row>
		</ed:container>
    </section>
    
	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>