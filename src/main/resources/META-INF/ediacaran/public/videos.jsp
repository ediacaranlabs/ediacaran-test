<%@taglib uri="http://java.sun.com/jsp/jstl/core"                 prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Videos</title>
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
	
	<section class="inner-headline">
		<ed:container>
			<ed:row>
				<ed:col size="7">
					<div class="inner-heading">
						<h2>Videos</h2>
					</div>
				</ed:col>
				<ed:col size="5">
					<ec:breadcrumb title="Videos">
							<ec:breadcrumb-path icon="home" text="Início" lnk="/" />
					</ec:breadcrumb>
				</ed:col>
			</ed:row>
		</ed:container>
	</section>

	<section class="content">
		<ed:container>
		<ed:row style="section">
			<ed:col size="6">
				<iframe width="420" height="250" src="https://www.youtube.com/embed/kviYvWo99f4" title="Ediacaran Application" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</ed:col>
			<ed:col size="6">
				<h1><b>Ediacaran Application</b></h1>
				<h4>Ediacaran Application</h4>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6">
				<iframe width="420" height="250" src="https://www.youtube.com/embed/DLwfFcvQn5g" title="How to setup ediacaran development environment in eclipse" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</ed:col>
			<ed:col size="6">
				<h1><b>Ediacaran development environment</b></h1>
				<h4>How to setup ediacaran development environment in eclipse</h4>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6">
				<iframe width="420" height="250" src="https://www.youtube.com/embed/BSjePpKIIlI" title="Directory Structure of Ediacaran" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</ed:col>
			<ed:col size="6">
				<h1><b>Directory Structure</b></h1>
				<h4>Directory Structure of Ediacaran</h4>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6">
				<iframe width="420" height="250" src="https://www.youtube.com/embed/dLMZMswtDig" title="How to create a new ediacaran module project in eclipse." frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</ed:col>
			<ed:col size="6">
				<h1><b>Creating new module</b></h1>
				<h4>How to create a new Ediacaran module project in eclipse.</h4>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6">
				<iframe width="420" height="250" src="https://www.youtube.com/embed/hswbSbY6EBs" title="Consuming WebServices in Ediacaran Frontend" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</ed:col>
			<ed:col size="6">
				<h1><b>Consuming WebServices</b></h1>
				<h4>Consuming WebServices in Ediacaran Frontend</h4>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6">
				<iframe width="420" height="250" src="https://www.youtube.com/embed/edF8J0sM644" title="Image gallery with Ediacaran" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</ed:col>
			<ed:col size="6">
				<h1><b>Image gallery</b></h1>
				<h4>Image gallery with Ediacaran</h4>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6">
				<iframe width="420" height="250" src="https://www.youtube.com/embed/QaCG5NtsmiM" title="Image field with Ediacaran" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</ed:col>
			<ed:col size="6">
				<h1><b>Image field</b></h1>
				<h4>Image field with Ediacaran</h4>
			</ed:col>
		</ed:row>
		</ed:container>
	</section>

	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>