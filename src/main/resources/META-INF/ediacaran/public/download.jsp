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
</head>

<body>

	<ec:include uri="/includes/header.jsp"/>
	
	<section class="inner-headline">
		<ed:container>
			<ed:row>
				<ed:col size="7">
					<div class="inner-heading">
						<h2>Download</h2>
					</div>
				</ed:col>
				<ed:col size="5">
					<ec:breadcrumb title="Download">
							<ec:breadcrumb-path icon="home" text="Início" lnk="/" />
					</ec:breadcrumb>
				</ed:col>
			</ed:row>
		</ed:container>
	</section>

	<section class="content">
		<ed:container>
		<ed:row>
			<ed:col size="12">
				<h1>Releases</h1>
				
				<ec:separator/>
				
				<h2>Runtime</h2>
				
				<ec:description-list>
					<ec:description title="1.0.0.1">
						<ec:icon icon="download"/> <br>
						10/04/2024<br>
						Versão de execução contendo os módulos:
						<ec:list>
							<ec:list-item><b>System</b></ec:list-item>
							<ec:list-item><b>Security</b></ec:list-item>
							<ec:list-item><b>Front</b></ec:list-item>
							<ec:list-item><b>Front Security</b></ec:list-item>
							<ec:list-item><b>Ediacaran Test</b></ec:list-item>
						</ec:list>
						<a href="#">Mais sobre</a>
					</ec:description>
				</ec:description-list>

				
				<ec:separator/>
				
				<h2>Modulo (projeto)</h2>
				
				<ec:description-list>
					<ec:description title="1.0.0.1">
						<ec:icon icon="download"/> <br>
						10/04/2024<br>
						Projeto base de um novo módulo. Necessário os módulos:
						<ec:list>
							<ec:list-item><b>System</b></ec:list-item>
							<ec:list-item><b>Security</b></ec:list-item>
							<ec:list-item><b>Front</b></ec:list-item>
							<ec:list-item><b>Front Security</b></ec:list-item>
							<ec:list-item><b>Ediacaran Test</b></ec:list-item>
						</ec:list>
						<a href="#">Mais sobre</a>
					</ec:description>
				</ec:description-list>

				<ec:separator/>
				
				<h2>JUnit </h2>
				
				<ec:description-list>
					<ec:description title="1.0.0.1">
						<ec:icon icon="download"/> <br>
						10/04/2024<br>
						Permite fazer testes unitários em módulos.<br>
						<a href="#">Mais sobre</a>
					</ec:description>
				</ec:description-list>
				
			</ed:col>
		</ed:row>
		</ed:container>
	</section>

	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>