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
						<h2>Typography</h2>
					</div>
				</ed:col>
				<ed:col size="8">
					<ec:breadcrumb title="Typography">
						<ec:breadcrumb-path icon="home" text="" lnk="#" />
						<ec:breadcrumb-path icon="" text="Features" lnk="#" />
					</ec:breadcrumb>
				</ed:col>
			</ed:row>
		</ed:container>
	</section>
	
	<section class="content">
		<ed:container>
			<ed:row>
				<ed:col size="4">
		            <h4>H1-H6 Heading style</h4>
		            <h1>Heading H1</h1>
		            <h2>Heading H2</h2>
		            <h3>Heading H3</h3>
		            <h4>Heading H4</h4>
		            <h5>Heading H5</h5>
		            <h6>Heading H6</h6>
				</ed:col>
				<ed:col size="4">
		            <h4>Example of paragraph</h4>
		            <p><strong>Lorem ipsum dolor sit amet</strong>, consetetur sadipscing elitr, 
		            sed diam non mod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
		            <p class="lead">At vero eos et accusam et justo duo dolores et eabum.</p>
		            <p><em>Consetetur sadipscing elitr, sed diam non mod tempor invidunt ut labore et dolore magna 
		            aliquyam erat, sed diam voluptua. </em></p>
		            <p><small>Consetetur sadipscing elitr, sed diam non mod tempor invidunt ut labore et dolore magna 
		            aliquyam erat, sed diam voluptua. </small></p>
				</ed:col>
				<ed:col size="4">
		            <h4>Float image in paragraph</h4>
		            <ec:image src="/img/dummy-1.jpg" align="left" />
		            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam non mod tempor invidunt ut 
		            labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et eabum. Stet clita kasd gubergren, no sea takimata sanctus
		            est Lorem ipsum dolor sit amet</p>
				</ed:col>
			</ed:row>
			
			<ed:row>
				<ed:col size="6">
		            <h4>Description</h4>
		            <ec:description-list>
		            	<ec:description title="Description lists">
		            		<p>description list is perfect for defining terms.</p>
		            	</ec:description>
		            	<ec:description title="Euismod">
			              <p>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</p>
			              <p>Donec id elit non mi porta gravida at eget metus.</p>
		            	</ec:description>
		            	<ec:description title="Malesuada porta">
			              <p>Etiam porta sem malesuada magna mollis euismod.</p>
		            	</ec:description>
		            	<ec:description title="Felis euismod semper eget lacinia">
			              <p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo 
			              sit amet risus.</p>
		            	</ec:description>
		            </ec:description-list>
				</ed:col>
				<ed:col size="6">
		            <h4>Horizontal Description</h4>
		            <ec:description-list style="horizontal" >
		            	<ec:description title="Description lists">
		            		<p>description list is perfect for defining terms.</p>
		            	</ec:description>
		            	<ec:description title="Euismod">
			              <p>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</p>
			              <p>Donec id elit non mi porta gravida at eget metus.</p>
		            	</ec:description>
		            	<ec:description title="Malesuada porta">
			              <p>Etiam porta sem malesuada magna mollis euismod.</p>
		            	</ec:description>
		            	<ec:description title="Felis euismod semper eget lacinia">
			              <p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo 
			              sit amet risus.</p>
		            	</ec:description>
		            </ec:description-list>
				</ed:col>
			</ed:row>
			
			<ed:row>
				<ed:col size="3">
		            <h4>Unordered Lists</h4>
		            <ec:list>
		              <ec:list-item>Lorem ipsum dolor sit amet</ec:list-item>
		              <ec:list-item>Consectetur adipiscing elit</ec:list-item>
		              <ec:list-item>Integer molestie lorem at massa</ec:list-item>
		              <ec:list-item>Facilisis in pretium nisl aliquet</ec:list-item>
		              <ec:list-item>Nulla volutpat aliquam velit
		                <ec:list>
		                  <ec:list-item>Phasellus iaculis neque</ec:list-item>
		                  <ec:list-item>Purus sodales ultricies</ec:list-item>
		                  <ec:list-item>Vestibulum laoreet porttitor sem</ec:list-item>
		                  <ec:list-item>Ac tristique libero volutpat at</ec:list-item>
		                </ec:list>
		              </ec:list-item>
		              <ec:list-item>Faucibus porta lacus fringilla vel</ec:list-item>
		              <ec:list-item>Aenean sit amet erat nunc</ec:list-item>
		              <ec:list-item>Eget porttitor lorem</ec:list-item>
		            </ec:list>
				</ed:col>
				<ed:col size="3">
		           <h4>Unstyled Lists</h4>
		            <ec:list style="unstyled">
		              <ec:list-item>Lorem ipsum dolor sit amet</ec:list-item>
		              <ec:list-item>Consectetur adipiscing elit</ec:list-item>
		              <ec:list-item>Integer molestie lorem at massa</ec:list-item>
		              <ec:list-item>Facilisis in pretium nisl aliquet</ec:list-item>
		              <ec:list-item>Nulla volutpat aliquam velit
		                <ec:list>
		                  <ec:list-item>Phasellus iaculis neque</ec:list-item>
		                  <ec:list-item>Purus sodales ultricies</ec:list-item>
		                  <ec:list-item>Vestibulum laoreet porttitor sem</ec:list-item>
		                  <ec:list-item>Ac tristique libero volutpat at</ec:list-item>
		                </ec:list>
		              </ec:list-item>
		              <ec:list-item>Faucibus porta lacus fringilla vel</ec:list-item>
		              <ec:list-item>Aenean sit amet erat nunc</ec:list-item>
		              <ec:list-item>Eget porttitor lorem</ec:list-item>
		            </ec:list>
				</ed:col>
				<ed:col size="3">
		            <h4>Ordered Lists</h4>
		            <ec:list style="ordered">
		              <ec:list-item>Lorem ipsum dolor sit amet</ec:list-item>
		              <ec:list-item>Consectetur adipiscing elit</ec:list-item>
		              <ec:list-item>Integer molestie lorem at massa</ec:list-item>
		              <ec:list-item>Facilisis in pretium nisl aliquet</ec:list-item>
		              <ec:list-item>Nulla volutpat aliquam velit
		                <ec:list style="ordered">
		                  <ec:list-item>Phasellus iaculis neque</ec:list-item>
		                  <ec:list-item>Purus sodales ultricies</ec:list-item>
		                  <ec:list-item>Vestibulum laoreet porttitor sem</ec:list-item>
		                  <ec:list-item>Ac tristique libero volutpat at</ec:list-item>
		                </ec:list>
		              </ec:list-item>
		              <ec:list-item>Faucibus porta lacus fringilla vel</ec:list-item>
		              <ec:list-item>Aenean sit amet erat nunc</ec:list-item>
		              <ec:list-item>Eget porttitor lorem</ec:list-item>
		            </ec:list>
				</ed:col>
				<ed:col size="3">
		            <h4>Unstyled Lists</h4>
		            <ec:list style="unstyled">
		              <ec:list-item>Lorem ipsum dolor sit amet</ec:list-item>
		              <ec:list-item>Consectetur adipiscing elit</ec:list-item>
		              <ec:list-item>Integer molestie lorem at massa</ec:list-item>
		              <ec:list-item>Facilisis in pretium nisl aliquet</ec:list-item>
		              <ec:list-item>Nulla volutpat aliquam velit
		                <ec:list style="ordered">
		                  <ec:list-item>Phasellus iaculis neque</ec:list-item>
		                  <ec:list-item>Purus sodales ultricies</ec:list-item>
		                  <ec:list-item>Vestibulum laoreet porttitor sem</ec:list-item>
		                  <ec:list-item>Ac tristique libero volutpat at</ec:list-item>
		                </ec:list>
		              </ec:list-item>
		              <ec:list-item>Faucibus porta lacus fringilla vel</ec:list-item>
		              <ec:list-item>Aenean sit amet erat nunc</ec:list-item>
		              <ec:list-item>Eget porttitor lorem</ec:list-item>
		            </ec:list>
				</ed:col>
			</ed:row>			

			<ed:row>
				<ed:col size="12">
		            <h4>Inline Lists</h4>
		            <ec:list style="inline">
		              <ec:list-item>1-List item one</ec:list-item>
		              <ec:list-item>2-List item two</ec:list-item>
		              <ec:list-item>3-List item three</ec:list-item>
		              <ec:list-item>4-List item four</ec:list-item>
		              <ec:list-item>5-List item five</ec:list-item>
		              <ec:list-item>6-List item six</ec:list-item>
		              <ec:list-item>7-List item seven</ec:list-item>
		              <ec:list-item>8-List item eight</ec:list-item>
		              <ec:list-item>9-List item nine</ec:list-item>
		              <ec:list-item>10-List item ten</ec:list-item>
		            </ec:list>
				</ed:col>
			</ed:row>

			<ed:row>
				<ed:col size="4">
		            <h4>Blockquote</h4>
		            <ec:blockquote>
		            	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam non mod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
	            	</ec:blockquote>
				</ed:col>
				<ed:col size="4">
		            <h4>Blockquote and cite</h4>
		            <ec:blockquote cite="John doe, Awesome Inc.">
		            	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam non mod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
	            	</ec:blockquote>
				</ed:col>
				<ed:col size="4">
		            <h4>Pullquote left and right</h4>
					<ec:pullquote>
						Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam non mod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
					</ec:pullquote>
					<ec:pullquote style="right">
						Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam non mod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
					</ec:pullquote>
				</ed:col>
			</ed:row>

			<ed:row>
				<ed:col size="12">
		            <h4>Preformatted text</h4>
		            <ec:prettify linenums="true"><div class="col-12">
	<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr..</p>
	<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr..</p>
	<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr..</p>
</div></ec:prettify>
				</ed:col>
			</ed:row>

		</ed:container>
	</section>

	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>