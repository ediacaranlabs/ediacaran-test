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
						<h2>Form Request Response</h2>
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
							<h3>JSON Request and JSON response</h3>
						</ed:col>
					</ed:row>
					
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
									<a href="${pageContext.request.contextPath}/edit/!{item.id}/">Edit</a> |
									<a href="${pageContext.request.contextPath}/delete/!{item.id}/">Delete</a>
								</ed:col>
							</ed:row>
						</ec:forEach>
					</ec:response>
					
					<ed:row>
						<ed:col size="12">
							<h3>JSON Request and HTML response</h3>
						</ed:col>
					</ed:row>
					
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
					
					<ed:row>
						<ed:col size="12">
							<h3>URL encoded Request and JSON response</h3>
						</ed:col>
					</ed:row>
					
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
									<a href="${pageContext.request.contextPath}/edit/!{item.id}/">Edit</a> |
									<a href="${pageContext.request.contextPath}/delete/!{item.id}/">Delete</a>
								</ed:col>
							</ed:row>
						</ec:forEach>
					</ec:response>
									
					<ed:row>
						<ed:col size="12">
							<h3>URL encoded Request and HTML response</h3>
						</ed:col>
					</ed:row>

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
					
				</ed:col>
			</ed:row>
		</ed:container>
    </section>
    
	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>