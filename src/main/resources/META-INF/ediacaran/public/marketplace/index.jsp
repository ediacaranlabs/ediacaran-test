<%@taglib uri="http://java.sun.com/jsp/jstl/core"                 prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<ec:load-data file="index" locale="${locale}" var="pageObjects" />
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<ec:include uri="/includes/head.jsp"/>
<style type="text/css">
.box-body {
	min-height: 120px !important;
}
</style>
<title>Marketplace</title>
</head>

<body>

	<ec:include uri="/includes/header.jsp"/>
	
	<ec:nivo-slider button="Mais">
		<ec:nivo-slider-item link="#" 
			image="/marketplace/img/slide/bg-1.jpg" 
			title="Marketplace">
			Comece hoje a ganhar dinheiro com seus plugins em nosso Marketplace!
		</ec:nivo-slider-item>
	</ec:nivo-slider>

	<section class="content">
		<ed:container>
		<ed:row>
			<ed:col size="12">
				<ec:image src="/marketplace/img/soon.jpg" align="center" />
			</ed:col>
		</ed:row>
		</ed:container>
	</section>

	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>