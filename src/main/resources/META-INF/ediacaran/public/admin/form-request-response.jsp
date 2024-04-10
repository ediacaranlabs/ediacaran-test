<%@taglib uri="http://java.sun.com/jsp/jstl/core"                   prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<section class="inner-headline">
		<ed:row>
			<ed:col size="4">
				<div class="inner-heading">
					<h2>Response Template</h2>
				</div>
			</ed:col>
			<ed:col size="8">
				<ec:breadcrumb title="Response Template">
					<ec:breadcrumb-path icon="home" text="" lnk="#" />
					<ec:breadcrumb-path text="Features" lnk="#" />
				</ec:breadcrumb>
			</ed:col>
		</ed:row>
</section>

<ed:row>
	<ed:col size="12">

		<ec:box>
			<ec:box-header>JSON Request and JSON response</ec:box-header>
			<ec:box-body>
				<ec:form method="post" enctype="json" 
					action="${pageContext.request.contextPath}/form-request-response/search-json-json" 
					update="result">
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
				</ec:form>
				<div id="result">
				</div>
				<ec:response to="result" var="response">
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
								dest-content="details">
								Show</a>
							</ed:col>
						</ed:row>
					</ec:forEach>
		
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
					
				</ec:response>
			</ec:box-body>
		</ec:box>
		
		<ec:box>
			<ec:box-header>JSON Request and HTML response</ec:box-header>
			<ec:box-body>
				<ec:form method="post" enctype="json" 
					action="${pageContext.request.contextPath}/form-request-response/search-json-html" update="result2">
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
				</ec:form>
				<div id="result2">
				</div>
			</ec:box-body>
		</ec:box>

		<ec:box>
			<ec:box-header>URL encoded Request and JSON response</ec:box-header>
			<ec:box-body>
				<ec:form method="post" 
					action="${pageContext.request.contextPath}/form-request-response/search-urlencoded-json" 
					update="result3">
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
				</ec:form>
				<div id="result3">
				</div>
				<ec:response to="result3" var="response">
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
								dest-content="details3">
								Show</a>
							</ed:col>
						</ed:row>
					</ec:forEach>
					
					<ec:response to="details3" var="item">
						<ec:modal-header>
							<h4 class="modal-title">!{item.name} (Details3)</h4>
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
											
				</ec:response>
			</ec:box-body>
		</ec:box>
		
		<ec:box>
			<ec:box-header>URL encoded Request and HTML response</ec:box-header>
			<ec:box-body>
				<ec:form method="post" 
					action="${pageContext.request.contextPath}/form-request-response/search-urlencoded-html"
					 update="result4">
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
				</ec:form>
				<div id="result4">
				</div>
			</ec:box-body>
		</ec:box>
		
	</ed:col>
</ed:row>
