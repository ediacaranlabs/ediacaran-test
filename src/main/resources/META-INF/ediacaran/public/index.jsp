<%@taglib uri="http://java.sun.com/jsp/jstl/core"                   prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
<ec:load-data file="index" locale="${locale}" var="pageObjects" />
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="canonical" href="https://www.uoutec.com.br/">
<title>UoU Tecnologia</title>
<meta property="og:url" content="https://www.uoutec.com.br/">
<meta property="fb:app_id">
<meta property="og:title" content="Ediacaran Application">
<meta property="og:description" content="Ediacaran � uma aplica��o com arquitetura modular.">
<meta name="description" content="Ediacaran � uma aplica��o modular...">
<meta property="keywords" content="ediacaran,java">
<meta property="og:type" content="article">
<meta property="og:image:width" content="560">
<meta property="og:image:height" content="292">
<meta property="og:image:type" content="image/jpeg">
<meta property="og:image" content="https://www.uoutec.com.br/img/img.jpg">
<meta property="og:image:secure_url" content="https://www.uoutec.com.br/img/img.jpg">
<meta name="twitter:image" content="https://www.uoutec.com.br/img/img.jpg">
<meta property="og:locale" content="pt_BR">
<meta name="twitter:card" content="summary_large_image">
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
	
	<ec:nivo-slider button="Mais">
		<ec:nivo-slider-item link="/marketplace/index.jsp" 
			image="/marketplace/img/slide/bg-1.jpg" 
			title="Marketplace">
			Comece hoje a ganhar dinheiro com seus modulos em nosso Marketplace!
		</ec:nivo-slider-item>
		<ec:nivo-slider-item link="#" 
			image="/img/slide/bg-1.jpg" 
			title="Construa aplica��es complexas">
			Construa aplica��es usando uma arquiterura modular que facilita sua manuten��o.
		</ec:nivo-slider-item>
		<ec:nivo-slider-item link="#" 
			image="/img/slide/bg-2.jpg" 
			title="Maior seguran�a">
			Tenha um maior controle sobre os m�dulos da sua aplica��o com regras de acesso aos seus recursos. 
		</ec:nivo-slider-item>
		<ec:nivo-slider-item link="#" 
			image="/img/slide/bg-3.jpg" 
			title="Componentes visuais">
			Construa aplica��es com interfaces ricas com a possibilidade da constru��o de novos componentes. 
		</ec:nivo-slider-item>
	</ec:nivo-slider>

	<section class="content">
		<ed:container>
		<ed:row style="section">
			<ed:col size="6">
				<h1><b>Arquitetura modular</b></h1>
				<h4>Construa aplica��es usando uma arquiterura que facilita a escalabilidade e manuten��o.</h4>
			</ed:col>
			<ed:col size="6">
				<ec:image src="/img/img-01.jpg" style="thumbnail" align="center"/>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6" offset="8">
				<ec:image src="/img/img-02.jpg" style="thumbnail" align="center"/>
			</ed:col>
			<ed:col size="6">
				<h1><b>Componentes visuais</b></h1>
				<h4>Construa aplica��es com interfaces ricas com a possibilidade da constru��o de novos componentes.</h4>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6">
				<h1><b>Maior seguran�a</b></h1>
				<h4>Tenha um maior controle sobre os m�dulos da sua aplica��o com regras de acesso aos seus recursos.</h4>
			</ed:col>
			<ed:col size="6">
				<ec:image src="/img/img-03.jpg" style="thumbnail" align="center"/>
			</ed:col>
		</ed:row>
		<ed:row style="section">
			<ed:col size="6">
				<ec:image src="/img/img-04.jpg" style="thumbnail" align="center"/>
			</ed:col>
			<ed:col size="6">
				<h1><b>Gerenciamento de conte�do</b></h1>
				<h4>Publique e gerencie p�ginas de forma f�cil e intuitiva!</h4>
			</ed:col>
		</ed:row>
		</ed:container>
	</section>

	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>