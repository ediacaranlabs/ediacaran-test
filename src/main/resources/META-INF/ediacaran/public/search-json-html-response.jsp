<%@taglib uri="http://java.sun.com/jsp/jstl/core"                   prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<c:forEach items="${response.data}" var="item">
	<ed:row>
		<ed:col size="2">
			${item.id}
		</ed:col>
		<ed:col size="6">
			${item.name}
		</ed:col>
		<ed:col size="2">
			${item.gender}
		</ed:col>
		<ed:col size="2">
			<a href="#m${pageContext.request.contextPath}/form-request-response/details/html/${item.id}">
			Show</a>
		</ed:col>
	</ed:row>
</c:forEach>
