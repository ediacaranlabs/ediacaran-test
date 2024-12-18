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
						<h2>Tables</h2>
					</div>
				</ed:col>
				<ed:col size="8">
					<ec:breadcrumb title="Tables">
						<ec:breadcrumb-path icon="home" text="" lnk="#" />
						<ec:breadcrumb-path text="Features" lnk="#" />
					</ec:breadcrumb>
				</ed:col>
			</ed:row>
		</ed:container>
	</section>
	
    <section class="content">
		<ed:container>
			<ed:row>
				<ed:col size="12">
		            <h4>Default styles</h4>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="6">
					<ec:table>
						<ec:table-header>
		                  <ec:table-col>#</ec:table-col>
		                  <ec:table-col>First Name</ec:table-col>
		                  <ec:table-col>Last Name</ec:table-col>
		                  <ec:table-col>Username</ec:table-col>
						</ec:table-header>
		              <ec:table-body>
		                <ec:table-row>
		                  <ec:table-col>1</ec:table-col>
		                  <ec:table-col>Mark</ec:table-col>
		                  <ec:table-col>Otto</ec:table-col>
		                  <ec:table-col>@mdo</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>2</ec:table-col>
		                  <ec:table-col>Jacob</ec:table-col>
		                  <ec:table-col>Thornton</ec:table-col>
		                  <ec:table-col>@fat</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>3</ec:table-col>
		                  <ec:table-col>Larry</ec:table-col>
		                  <ec:table-col>the Bird</ec:table-col>
		                  <ec:table-col>@twitter</ec:table-col>
		                </ec:table-row>
		              </ec:table-body>
					</ec:table>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><table>
	<table-header>
		<table-col>#</table-col>
		<table-col>First Name</table-col>
		<table-col>Last Name</table-col>
		<table-col>Username</table-col>
	</table-header>
	<table-body>
		<table-row>
			<table-col>1</table-col>
			<table-col>Mark</table-col>
			<table-col>Otto</table-col>
			<table-col>@mdo</table-col>
		</table-row>
		<table-row>
			<table-col>2</table-col>
			<table-col>Jacob</table-col>
			<table-col>Thornton</table-col>
			<table-col>@fat</table-col>
		</table-row>
		<table-row>
			<table-col>3</table-col>
			<table-col>Larry</table-col>
			<table-col>the Bird</table-col>
			<table-col>@twitter</table-col>
		</table-row>
	</table-body>
</table></ec:prettify>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="12">
		            <h4>Default Styles with Zebra-Striping</h4>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="6">
					<ec:table style="striped">
						<ec:table-header>
		                  <ec:table-col>#</ec:table-col>
		                  <ec:table-col>First Name</ec:table-col>
		                  <ec:table-col>Last Name</ec:table-col>
		                  <ec:table-col>Username</ec:table-col>
						</ec:table-header>
		              <ec:table-body>
		                <ec:table-row>
		                  <ec:table-col>1</ec:table-col>
		                  <ec:table-col>Mark</ec:table-col>
		                  <ec:table-col>Otto</ec:table-col>
		                  <ec:table-col>@mdo</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>2</ec:table-col>
		                  <ec:table-col>Jacob</ec:table-col>
		                  <ec:table-col>Thornton</ec:table-col>
		                  <ec:table-col>@fat</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>3</ec:table-col>
		                  <ec:table-col>Larry</ec:table-col>
		                  <ec:table-col>the Bird</ec:table-col>
		                  <ec:table-col>@twitter</ec:table-col>
		                </ec:table-row>
		              </ec:table-body>
					</ec:table>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><table style="striped">
	<table-header>
		<table-col>#</table-col>
		<table-col>First Name</table-col>
		<table-col>Last Name</table-col>
		<table-col>Username</table-col>
	</table-header>
	<table-body>
		<table-row>
			<table-col>1</table-col>
			<table-col>Mark</table-col>
			<table-col>Otto</table-col>
			<table-col>@mdo</table-col>
		</table-row>
		<table-row>
			<table-col>2</table-col>
			<table-col>Jacob</table-col>
			<table-col>Thornton</table-col>
			<table-col>@fat</table-col>
		</table-row>
		<table-row>
			<table-col>3</table-col>
			<table-col>Larry</table-col>
			<table-col>the Bird</table-col>
			<table-col>@twitter</table-col>
		</table-row>
	</table-body>
</table></ec:prettify>
				</ed:col>
			</ed:row>

			<ed:row>
				<ed:col size="12">
		            <h4>Default Styles borders</h4>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="6">
					<ec:table style="bordered">
						<ec:table-header>
		                  <ec:table-col>#</ec:table-col>
		                  <ec:table-col>First Name</ec:table-col>
		                  <ec:table-col>Last Name</ec:table-col>
		                  <ec:table-col>Username</ec:table-col>
						</ec:table-header>
		              <ec:table-body>
		                <ec:table-row>
		                  <ec:table-col rows="2" >1</ec:table-col>
		                  <ec:table-col>Mark</ec:table-col>
		                  <ec:table-col>Otto</ec:table-col>
		                  <ec:table-col>@mdo</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>Jacob</ec:table-col>
		                  <ec:table-col>Thornton</ec:table-col>
		                  <ec:table-col>@fat</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>3</ec:table-col>
		                  <ec:table-col>Larry</ec:table-col>
		                  <ec:table-col>the Bird</ec:table-col>
		                  <ec:table-col>@twitter</ec:table-col>
		                </ec:table-row>
		              </ec:table-body>
					</ec:table>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><table style="bordered">
	<table-header>
		<table-col>#</table-col>
		<table-col>First Name</table-col>
		<table-col>Last Name</table-col>
		<table-col>Username</table-col>
	</table-header>
	<table-body>
		<table-row>
			<table-col rows="2">1</table-col>
			<table-col>Mark</table-col>
			<table-col>Otto</table-col>
			<table-col>@mdo</table-col>
		</table-row>
		<table-row>
			<table-col>Jacob</table-col>
			<table-col>Thornton</table-col>
			<table-col>@fat</table-col>
		</table-row>
		<table-row>
			<table-col>3</table-col>
			<table-col>Larry</table-col>
			<table-col>the Bird</table-col>
			<table-col>@twitter</table-col>
		</table-row>
	</table-body>
</table></ec:prettify>
				</ed:col>
			</ed:row>

			<ed:row>
				<ed:col size="12">
		            <h4>Default Styles with hover enabled</h4>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="6">
					<ec:table style="hover">
						<ec:table-header>
		                  <ec:table-col>#</ec:table-col>
		                  <ec:table-col>First Name</ec:table-col>
		                  <ec:table-col>Last Name</ec:table-col>
		                  <ec:table-col>Username</ec:table-col>
						</ec:table-header>
		              <ec:table-body>
		                <ec:table-row>
		                  <ec:table-col>1</ec:table-col>
		                  <ec:table-col>Mark</ec:table-col>
		                  <ec:table-col>Otto</ec:table-col>
		                  <ec:table-col>@mdo</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>2</ec:table-col>
		                  <ec:table-col>Jacob</ec:table-col>
		                  <ec:table-col>Thornton</ec:table-col>
		                  <ec:table-col>@fat</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>3</ec:table-col>
		                  <ec:table-col cols="2">Larry</ec:table-col>
		                  <ec:table-col>@twitter</ec:table-col>
		                </ec:table-row>
		              </ec:table-body>
					</ec:table>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><table style="hover">
	<table-header>
		<table-col>#</table-col>
		<table-col>First Name</table-col>
		<table-col>Last Name</table-col>
		<table-col>Username</table-col>
	</table-header>
	<table-body>
		<table-row>
			<table-col>1</table-col>
			<table-col>Mark</table-col>
			<table-col>Otto</table-col>
			<table-col>@mdo</table-col>
		</table-row>
		<table-row>
			<table-col>2</table-col>
			<table-col>Jacob</table-col>
			<table-col>Thornton</table-col>
			<table-col>@fat</table-col>
		</table-row>
		<table-row>
			<table-col>3</table-col>
			<table-col cols="2">Larry</table-col>
			<table-col>@twitter</table-col>
		</table-row>
	</table-body>
</table></ec:prettify>
				</ed:col>
			</ed:row>
			
			<ed:row>
				<ed:col size="12">
		            <h4>Cutting cell padding in half</h4>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="6">
					<ec:table style="sm">
						<ec:table-header>
		                  <ec:table-col>#</ec:table-col>
		                  <ec:table-col>First Name</ec:table-col>
		                  <ec:table-col>Last Name</ec:table-col>
		                  <ec:table-col>Username</ec:table-col>
						</ec:table-header>
		              <ec:table-body>
		                <ec:table-row>
		                  <ec:table-col>1</ec:table-col>
		                  <ec:table-col>Mark</ec:table-col>
		                  <ec:table-col>Otto</ec:table-col>
		                  <ec:table-col>@mdo</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>2</ec:table-col>
		                  <ec:table-col>Jacob</ec:table-col>
		                  <ec:table-col>Thornton</ec:table-col>
		                  <ec:table-col>@fat</ec:table-col>
		                </ec:table-row>
		                <ec:table-row>
		                  <ec:table-col>3</ec:table-col>
		                  <ec:table-col cols="2">Larry the Bird</ec:table-col>
		                  <ec:table-col>@twitter</ec:table-col>
		                </ec:table-row>
		              </ec:table-body>
					</ec:table>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><table style="sm">
	<table-header>
		<table-col>#</table-col>
		<table-col>First Name</table-col>
		<table-col>Last Name</table-col>
		<table-col>Username</table-col>
	</table-header>
	<table-body>
		<table-row>
			<table-col>1</table-col>
			<table-col>Mark</table-col>
			<table-col>Otto</table-col>
			<table-col>@mdo</table-col>
		</table-row>
		<table-row>
			<table-col>2</table-col>
			<table-col>Jacob</table-col>
			<table-col>Thornton</table-col>
			<table-col>@fat</table-col>
		</table-row>
		<table-row>
			<table-col>3</table-col>
			<table-col cols="2">Larry the Bird</table-col>
			<table-col>@twitter</table-col>
		</table-row>
	</table-body>
</table></ec:prettify>
				</ed:col>
			</ed:row>
			
			<ed:row>
				<ed:col size="12">
		            <h4>Use contextual classes to color table rows</h4>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="6">
					<ec:table>
						<ec:table-header>
		                  <ec:table-col>#</ec:table-col>
		                  <ec:table-col>First Name</ec:table-col>
		                  <ec:table-col>Last Name</ec:table-col>
		                  <ec:table-col>Username</ec:table-col>
						</ec:table-header>
		              <ec:table-body>
		                <ec:table-row style="success">
		                  <ec:table-col>1</ec:table-col>
		                  <ec:table-col>Mark</ec:table-col>
		                  <ec:table-col>Otto</ec:table-col>
		                  <ec:table-col>@mdo</ec:table-col>
		                </ec:table-row>
		                <ec:table-row style="danger">
		                  <ec:table-col>2</ec:table-col>
		                  <ec:table-col>Jacob</ec:table-col>
		                  <ec:table-col>Thornton</ec:table-col>
		                  <ec:table-col>@fat</ec:table-col>
		                </ec:table-row>
		                <ec:table-row style="warning">
		                  <ec:table-col>3</ec:table-col>
		                  <ec:table-col cols="2">Larry the Bird</ec:table-col>
		                  <ec:table-col>@twitter</ec:table-col>
		                </ec:table-row>
		                <ec:table-row style="info">
		                  <ec:table-col>4</ec:table-col>
		                  <ec:table-col cols="2">Bird</ec:table-col>
		                  <ec:table-col>@</ec:table-col>
		                </ec:table-row>
		              </ec:table-body>
					</ec:table>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><table>
	<table-header>
		<table-col>#</table-col>
		<table-col>First Name</table-col>
		<table-col>Last Name</table-col>
		<table-col>Username</table-col>
	</table-header>
	<table-body>
		<table-row style="success">
			<table-col>1</table-col>
			<table-col>Mark</table-col>
			<table-col>Otto</table-col>
			<table-col>@mdo</table-col>
		</table-row>
		<table-row style="danger">
			<table-col>2</table-col>
			<table-col>Jacob</table-col>
			<table-col>Thornton</table-col>
			<table-col>@fat</table-col>
		</table-row>
		<table-row style="warning">
			<table-col>3</table-col>
			<table-col size="2">Larry the Bird</table-col>
			<table-col>@twitter</table-col>
		</table-row>
		<table-row style="info">
			<table-col>4</table-col>
			<table-col cols="2">Bird</table-col>
			<table-col>@</table-col>
		</table-row>
	</table-body>
</table></ec:prettify>
				</ed:col>
			</ed:row>					
						

		</ed:container>    
    </section>
        	 
	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>