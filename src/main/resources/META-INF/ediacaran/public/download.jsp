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
				
				<h2>Versão Atual</h2>
				
				<h5>Servidor</h5>
				
				<ec:table style="dark">
					<ec:table-header>
						<ec:table-col>Versão</ec:table-col>
						<ec:table-col>Descrição</ec:table-col>
						<ec:table-col>Data da liberação</ec:table-col>
						<ec:table-col>Download</ec:table-col>
					</ec:table-header>
					<ec:table-body>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Versão de desenvolvimento</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/server/ediacaran-dev-1.0.0.zip/download">ZIP (385.2 kB)</a></ec:table-col>
						</ec:table-row>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Versão de produção</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/server/ediacaran-1.0.0.zip/download">ZIP (37.9 MB)</a></ec:table-col>
						</ec:table-row>
					</ec:table-body>
				</ec:table>

				<h5>Exemplos</h5>
				
				<ec:table style="dark">
					<ec:table-header>
						<ec:table-col>Versão</ec:table-col>
						<ec:table-col>Descrição</ec:table-col>
						<ec:table-col>Data da liberação</ec:table-col>
						<ec:table-col>Download</ec:table-col>
					</ec:table-header>
					<ec:table-body>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Teste dos componentes visuais</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/examples/ediacaran-test.zip/download">ZIP (4.5 MB)</a></ec:table-col>
						</ec:table-row>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Carregamento de link em um modal</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/examples/link-modal-project.zip/download">ZIP (14.8 kB)</a></ec:table-col>
						</ec:table-row>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Configuração de segurança</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/examples/security-project.zip/download">ZIP (15.9 kB)</a></ec:table-col>
						</ec:table-row>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Uso de campo imagem</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/examples/imagefield-plugin-project.zip/download">ZIP (13.0 kB)</a></ec:table-col>
						</ec:table-row>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Carregamento de link em um div</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/examples/link-div-project.zip/download">ZIP (15.2 kB)</a></ec:table-col>
						</ec:table-row>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Paginação de dados</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/examples/data-table-project.zip/download">ZIP (15.8 kB)</a></ec:table-col>
						</ec:table-row>
						<ec:table-row>
							<ec:table-col>1.0.0</ec:table-col>
							<ec:table-col>Paginação de dados com quantidade de páginas desconhecida</ec:table-col>
							<ec:table-col>06/06/2024</ec:table-col>
							<ec:table-col><a href="https://sourceforge.net/projects/ediacaran-application/files/1.0.0/examples/data-table-unknown-project.zip/download">ZIP (17.0 kB)</a></ec:table-col>
						</ec:table-row>
					</ec:table-body>
				</ec:table>

				<ec:separator/>
				
				<h2>Versão Anterior</h2>
				
				<ec:table style="dark">
					<ec:table-header>
						<ec:table-col>Versão</ec:table-col>
						<ec:table-col>Descrição</ec:table-col>
						<ec:table-col>Data da liberação</ec:table-col>
						<ec:table-col>Download</ec:table-col>
					</ec:table-header>
					<ec:table-body>
					</ec:table-body>
				</ec:table>

				<ec:separator/>

				<h2>Versões mais antigas</h2>
				
				<ec:table style="dark">
					<ec:table-header>
						<ec:table-col>Versão</ec:table-col>
						<ec:table-col>Descrição</ec:table-col>
						<ec:table-col>Data da liberação</ec:table-col>
						<ec:table-col>Download</ec:table-col>
					</ec:table-header>
					<ec:table-body>
					</ec:table-body>
				</ec:table>
				
			</ed:col>
		</ed:row>
		</ed:container>
	</section>

	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>