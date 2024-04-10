<%@taglib uri="http://java.sun.com/jsp/jstl/core"                 prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<section class="inner-headline">
		<ed:row>
			<ed:col size="4">
				<div class="inner-heading">
					<h2>Data table</h2>
				</div>
			</ed:col>
			<ed:col size="8">
				<ec:breadcrumb title="Data Table">
					<ec:breadcrumb-path icon="home" text="" lnk="#" />
					<ec:breadcrumb-path text="Features" lnk="#" />
				</ec:breadcrumb>
			</ed:col>
		</ed:row>
</section>

<ec:box>
	<ec:box-header>Datatable row</ec:box-header>
	<ec:box-body>
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
							Show
						</ed:col>
					</ed:row>
				</ec:forEach>
			</ec:data-result>
		</ec:data-table>
	</ec:box-body>
</ec:box>			

<ec:box>
	<ec:box-header>Datatable col</ec:box-header>
	<ec:box-body>
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
							Show
						</ec:box-footer>
					</ec:box>
				</ed:col>
				</ec:forEach>						
			</ed:row>
			</ec:data-result>
		</ec:data-table>
	</ec:box-body>
</ec:box>

<ec:box>
	<ec:box-header>Datatable Unknown Pages</ec:box-header>
	<ec:box-body>
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
					<ec:box style="danger" >
						<ec:box-header>ID: !{item.id}</ec:box-header>
						<ec:box-body>
							<p>!{item.name}</p>
							<p>!{item.gender}</p>
						</ec:box-body>
						<ec:box-footer>
							Show
						</ec:box-footer>
					</ec:box>
				</ed:col>
				</ec:forEach>						
			</ed:row>
			</ec:data-result>
		</ec:data-table>	
	</ec:box-body>
</ec:box>