<%@taglib uri="http://java.sun.com/jsp/jstl/core"                   prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<ec:modal-header>
	<h4 class="modal-title">${item.name}</h4>
</ec:modal-header>
<ec:modal-body>
		<ed:row>
			<ed:col size="12">
				<ed:row>
					<ed:col size="2">
						<b>ID:</b>
					</ed:col>
					<ed:col size="10">
						${item.id}
					</ed:col>
				</ed:row>
				<ed:row>
					<ed:col size="2">
						<b>Name:</b>
					</ed:col>
					<ed:col size="10">
						${item.name}
					</ed:col>
				</ed:row>
				<ed:row>
					<ed:col size="2">
						<b>Gender:</b>
					</ed:col>
					<ed:col size="10">
						${item.gender}
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