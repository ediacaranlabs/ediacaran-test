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
										<a href="#m${pageContext.request.contextPath}/form-request-response/details/json/!{item.id}"
										dest-content="details">Show</a>
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
										<a href="#m${pageContext.request.contextPath}/form-request-response/details/json/!{item.id}"
										dest-content="details">Show</a>
									</ec:box-footer>
								</ec:box>
							</ed:col>
							</ec:forEach>						
						</ed:row>
						</ec:data-result>
					</ec:data-table>

					<ed:row>
						<ed:col size="12">
							<h3>Datatable Unknown Pages</h3>
						</ed:col>
					</ed:row>
					
					
					<ec:data-table action="${pageContext.request.contextPath}/data-table/search-unknown-pages">
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
										<a href="#m${pageContext.request.contextPath}/form-request-response/details/json/!{item.id}"
										dest-content="details">Show</a>
									</ec:box-footer>
								</ec:box>
							</ed:col>
							</ec:forEach>						
						</ed:row>
						</ec:data-result>
					</ec:data-table>
				</ed:col>
			</ed:row>
			
			<ec:response to="details" var="item">
				<ec:modal-header>
					<h4 class="modal-title">!{item.name}</h4>
				</ec:modal-header>
				<ec:modal-body>
						<ed:row>
							<ed:col size="12">
								<ed:row>
									<ed:col size="2">
										<b>ID:</b>
									</ed:col>
									<ed:col size="10">
										!{item.id}
									</ed:col>
								</ed:row>
								<ed:row>
									<ed:col size="2">
										<b>Name:</b>
									</ed:col>
									<ed:col size="10">
										!{item.name}
									</ed:col>
								</ed:row>
								<ed:row>
									<ed:col size="2">
										<b>Gender:</b>
									</ed:col>
									<ed:col size="10">
										!{item.gender}
									</ed:col>
								</ed:row>
							</ed:col>
						</ed:row>
				</ec:modal-body>
				<ec:modal-footer>
					<ec:button label="Close" actionType="button">
						<ec:event type="click">
							$.AppContext.dialog.close();
						</ec:event>
					</ec:button>
				</ec:modal-footer>
			</ec:response>
			
		</ed:container>
    </section>
    
	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>