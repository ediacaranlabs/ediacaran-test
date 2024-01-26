<%@taglib uri="http://java.sun.com/jsp/jstl/core"                 prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@page trimDirectiveWhitespaces="true" %>
	<section class="inner-headline">
		<ed:row>
			<ed:col size="4">
				<div class="inner-heading">
					<h2>Buttons</h2>
				</div>
			</ed:col>
			<ed:col size="8">
				<ec:breadcrumb title="Buttons">
					<ec:breadcrumb-path icon="home" text="" lnk="#" />
					<ec:breadcrumb-path icon="" text="Features" lnk="#" />
				</ec:breadcrumb>
			</ed:col>
		</ed:row>
	</section>

   	<ed:row>
		<ed:col size="6">
			<ec:box>
				<ec:box-header>
					<h3>Button types</h3>
				</ec:box-header>
				<ec:box-body>
					<ed:row>
						<ed:col size="4">
		                	<ec:button label="btn default" />
						</ed:col>
						<ed:col size="4">
		                	<ec:button label="btn primary" style="primary"/>
						</ed:col>
						<ed:col size="4">
        		        	<ec:button label="btn secondary"  style="secondary"/>
						</ed:col>
					</ed:row>
					<ed:row>
						<ed:col size="4">
                			<ec:button label="btn success"  style="success"/>
						</ed:col>
						<ed:col size="4">
        		        	<ec:button label="btn danger"  style="danger"/>
						</ed:col>
						<ed:col size="4">
		                	<ec:button label="btn warning"  style="warning"/>
						</ed:col>
					</ed:row>
					<ed:row>
						<ed:col size="4">
		                	<ec:button label="btn info"  style="info"/>
						</ed:col>
						<ed:col size="4">
        		        	<ec:button label="btn light"  style="light"/>
						</ed:col>
						<ed:col size="4">
                			<ec:button label="btn dark"  style="dark"/>
						</ed:col>
					</ed:row>
					<ed:row>
						<ed:col size="4">
		                	<ec:button label="btn link"  style="link"/>
						</ed:col>
						<ed:col size="4">
						</ed:col>
						<ed:col size="4">
						</ed:col>
					</ed:row>
				</ec:box-body>
			</ec:box>
		</ed:col>
		<ed:col size="6">
			<ec:box style="warning">
				<ec:box-header>
					<h3>Button sizes</h3>
				</ec:box-header>
				<ec:box-body>
					<ed:row>
						<ed:col size="12">
                			<ec:button label="Large button" size="lg"/>
						</ed:col>
					</ed:row>
					<ed:row>
						<ed:col size="12">
        		        	<ec:button label="Small button" size="sm" style="success"/>
						</ed:col>
					</ed:row>
					<ed:row>
						<ed:col size="12">
		                	<ec:button label="btn block level" block="true" style="warning"/>
						</ed:col>
					</ed:row>
				</ec:box-body>
			</ec:box>
		</ed:col>
   	</ed:row>

	<ed:row>
		<ed:col size="6">
			<ec:box style="success">
				<ec:box-header>
					<h3>Button group</h3>
				</ec:box-header>
				<ec:box-body>
	                <ec:button-group>
	                	<ec:button label="primary" style="primary"/>
	                	<ec:button label="success" style="success"/>
	                	<ec:button label="warning" style="warning"/>
	                </ec:button-group>
				</ec:box-body>
			</ec:box>
		</ed:col>
		<ed:col size="6">
			<ec:box style="info">
				<ec:box-header>
					<h3>Button with icon</h3>
				</ec:box-header>
				<ec:box-body>
					<ed:row>
						<ed:col size="4">
                			<ec:button label="heart" style="success" size="sm" icon="heart" />
						</ed:col>
						<ed:col size="4">
        		        	<ec:button label="camera" style="red" size="sm" icon="camera" />
						</ed:col>
						<ed:col size="4">
		                	<ec:button label="briefcase" size="sm" outline="true" icon="briefcase"/>
						</ed:col>
					</ed:row>
				</ec:box-body>
			</ec:box>
		</ed:col>
   	</ed:row>