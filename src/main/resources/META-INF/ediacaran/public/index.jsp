<%@taglib uri="http://java.sun.com/jsp/jstl/core"                   prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<ec:load-data file="index" locale="${locale}" var="pageData" />

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="canonical" href="${pageData.head.canonical}">
<title>${pageData.head.title}</title>
<meta property="og:url" content="${pageData.head.og_url}">
<meta property="fb:app_id">
<meta property="og:title" content="${pageData.head.og_title}">
<meta property="og:description" content="${pageData.head.og_description}">
<meta name="description" content="${pageData.head.description}">
<meta property="keywords" content="${pageData.head.keywords}">
<meta property="og:type" content="${pageData.head.og_type}">
<meta property="og:image:width" content="${pageData.head.og_img_width}">
<meta property="og:image:height" content="${pageData.head.og_img_height}">
<meta property="og:image:type" content="${pageData.head.og_img_type}">
<meta property="og:image" content="${pageData.head.og_img}">
<meta property="og:image:secure_url" content="${pageData.head.og_img_secure}">
<meta property="og:locale" content="${pageData.head.og_locale}">
<meta name="twitter:image" content="${pageData.head.twt_img}">
<meta name="twitter:card" content="${pageData.head.twt_card}">
<ec:include uri="/includes/head.jsp"/>
<style type="text/css">
.box-body {
	min-height: 120px !important;
}

.section-row{
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -5px;
    margin-left: -5px;
    margin-top: 40px;
    margin-bottom: 40px;
}
</style>
</head>

<body>

	<ec:include uri="/includes/header.jsp"/>
	
	<ec:nivo-slider button="${pageData.slider.button}">
		<c:forEach items="${pageData.slider.itens}" var="sliderItem">
			<ec:nivo-slider-item link="${sliderItem.link}" 
				image="${sliderItem.image}" 
				title="${sliderItem.title}">
				${sliderItem.content}
			</ec:nivo-slider-item>
		</c:forEach>
	</ec:nivo-slider>

	<section class="content">
		<ed:container>
		<c:forEach items="${pageData.features}" var="feature" varStatus="status">
			<c:if test="${status.index % 2 == 0}">
				<ed:row style="section">
					<ed:col size="6">
						<h1><b>${feature.title}</b></h1>
						<h4>${feature.content}</h4>
					</ed:col>
					<ed:col size="6">
						<ec:image src="${feature.image}" style="thumbnail" align="center"/>
					</ed:col>
				</ed:row>
			</c:if>
			<c:if test="${status.index % 2 != 0}">
				<ed:row style="section">
					<ed:col size="6">
						<ec:image src="${feature.image}" style="thumbnail" align="center"/>
					</ed:col>
					<ed:col size="6">
						<h1><b>${feature.title}</b></h1>
						<h4>${feature.content}</h4>
					</ed:col>
				</ed:row>
			</c:if>
		</c:forEach>
		</ed:container>
	</section>

	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>