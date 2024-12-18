<%@taglib uri="http://java.sun.com/jsp/jstl/core"                   prefix="c"%>
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
						<h2>Components</h2>
					</div>
				</ed:col>
				<ed:col size="8">
					<ec:breadcrumb title="Components">
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
				<ed:col size="6">
                	<h4>Gallery</h4>
					<ec:gallery cols="4">
						<ec:gallery-filters>
							<ec:gallery-filter name="All" code="all"/>
							<ec:gallery-filter name="Filter A" code="filter_a"/>
						</ec:gallery-filters>
						<ec:gallery-images>
							<ec:gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-01.jpg" 
								text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Phasellus quis elementum odio. Curabitur pellentesque, 
								dolor vel pharetra mollis." src="/img/gallery/full/image-01-full.jpg" 
								title="The City" />
							<ec:gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-02.jpg" 
								text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Phasellus quis elementum odio. Curabitur pellentesque, 
								dolor vel pharetra mollis." src="/img/gallery/full/image-02-full.jpg" 
								title="The City"/>
							<ec:gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-03.jpg" 
								text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Phasellus quis elementum odio. Curabitur pellentesque, 
								dolor vel pharetra mollis." 
								src="/img/gallery/full/image-03-full.jpg" title="The City"/>
							<ec:gallery-image icon="/img/gallery/thumbs/image-04.jpg"
								text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Phasellus quis elementum odio. Curabitur pellentesque, 
								dolor vel pharetra mollis." src="/img/gallery/full/image-04-full.jpg" 
								title="The City"/>
							<ec:gallery-image icon="/img/gallery/thumbs/image-05.jpg" 
								text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Phasellus quis elementum odio. Curabitur pellentesque, 
								dolor vel pharetra mollis." src="/img/gallery/full/image-05-full.jpg" 
								title="The City"/>
							<ec:gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-06.jpg" 
								text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Phasellus quis elementum odio. Curabitur pellentesque, 
								dolor vel pharetra mollis." src="/img/gallery/full/image-06-full.jpg" 
								title="The City"/>
							<ec:gallery-image icon="/img/gallery/thumbs/image-07.jpg" 
								text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Phasellus quis elementum odio. Curabitur pellentesque, 
								dolor vel pharetra mollis." src="/img/gallery/full/image-07-full.jpg" 
								title="The City"/>
							<ec:gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-08.jpg" 
								text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Phasellus quis elementum odio. Curabitur pellentesque, 
								dolor vel pharetra mollis." src="/img/gallery/full/image-08-full.jpg" 
								title="The City"/>
						</ec:gallery-images>
					</ec:gallery>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><gallery cols="4">
	<gallery-filters>
		<gallery-filter name="All" code="all"/>
		<gallery-filter name="Filter A" code="filter_a"/>
	</gallery-filters>
	<gallery-images>
		<gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-01.jpg" text="..." src="/img/gallery/full/image-01-full.jpg" title="The City"/>
		<gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-02.jpg" text="..." src="/img/gallery/full/image-02-full.jpg" title="The City"/>
		<gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-03.jpg" text="..." src="/img/gallery/full/image-03-full.jpg" title="The City"/>
		<gallery-image icon="/img/gallery/thumbs/image-04.jpg" text="..." src="/img/gallery/full/image-04-full.jpg" title="The City"/>
		<gallery-image icon="/img/gallery/thumbs/image-05.jpg" text="..." src="/img/gallery/full/image-05-full.jpg" title="The City"/>
		<gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-06.jpg" text="..." src="/img/gallery/full/image-06-full.jpg" title="The City"/>
		<gallery-image icon="/img/gallery/thumbs/image-07.jpg" text="..." src="/img/gallery/full/image-07-full.jpg" title="The City"/>
		<gallery-image filter="filter_a" icon="/img/gallery/thumbs/image-08.jpg" text="..." src="/img/gallery/full/image-08-full.jpg" title="The City"/>
	</gallery-images>
</gallery></ec:prettify>
				</ed:col>
			</ed:row>	
		
			<ed:row>
				<ed:col size="6">
                	<h4>Carousel</h4>
					<ec:carousel>
						<ec:carousel-item>
							<a href="#"><ec:image src="/img/gallery/thumbs/image-01.jpg"/></a>
						</ec:carousel-item> 
						<ec:carousel-item>
							<a href="#"><ec:image src="/img/gallery/thumbs/image-02.jpg"/></a>
						</ec:carousel-item> 
						<ec:carousel-item>
							<a href="#"><ec:image src="/img/gallery/thumbs/image-03.jpg"/></a>
						</ec:carousel-item> 
					</ec:carousel>                	
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><carousel>
	<carousel-item>
		<a href="#"><image src="/img/gallery/thumbs/image-01.jpg"/></a>
	</carousel-item> 
	<carousel-item>
		<a href="#"><image src="/img/gallery/thumbs/image-02.jpg"/></a>
	</carousel-item> 
	<carousel-item>
		<a href="#"><image src="/img/gallery/thumbs/image-03.jpg"/></a>
	</carousel-item> 
</carousel></ec:prettify>
				</ed:col>
			</ed:row>
			
			<ed:row>
				<ed:col size="6">
                	<h4>Nivo</h4>
					<ec:nivo-slider>
						<ec:nivo-slider-item link="#" image="/img/slides/nivo/bg-1.jpg" title="Slide 1">
							<p><strong>Augue iriure</strong> dolorum per ex, ne iisque ornatus veritus duo. </p>
						</ec:nivo-slider-item>
						<ec:nivo-slider-item link="#" image="/img/slides/nivo/bg-2.jpg" title="Slide 2">
							<p><strong>Augue iriure</strong> dolorum per ex, ne iisque ornatus veritus duo. </p>
						</ec:nivo-slider-item>
						<ec:nivo-slider-item link="#" image="/img/slides/nivo/bg-3.jpg" title="Slide 3">
							<p><strong>Augue iriure</strong> dolorum per ex, ne iisque ornatus veritus duo. </p>
						</ec:nivo-slider-item>
					</ec:nivo-slider>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><nivo-slider>
	<nivo-slider-item link="#" image="/img/slides/nivo/bg-1.jpg" title="Slide 1">
		...
	</nivo-slider-item>
	<nivo-slider-item link="#" image="/img/slides/nivo/bg-2.jpg" title="Slide 2">
		...
	</nivo-slider-item>
	<nivo-slider-item link="#" image="/img/slides/nivo/bg-3.jpg" title="Slide 3">
		...
	</nivo-slider-item>
</nivo-slider></ec:prettify>
				</ed:col>
			</ed:row>
						
			<ed:row>
				<ed:col size="6">
                	<h4>Button types</h4>
                	<ec:button label="btn default" />
                	<ec:button label="btn primary" style="primary"/>
                	<ec:button label="btn secondary"  style="secondary"/>
                	<ec:button label="btn success"  style="success"/>
                	<ec:button label="btn danger"  style="danger"/>
                	<ec:button label="btn warning"  style="warning"/>
                	<ec:button label="btn info"  style="info"/>
                	<ec:button label="btn light"  style="light"/>
                	<ec:button label="btn dark"  style="dark"/>
                	<ec:button label="btn link"  style="link"/>
                	<ec:button label="btn outline" outline="true"/>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><button label="btn default" />
<button label="btn primary" style="primary"/>
<button label="btn secondary"  style="secondary"/>
<button label="btn success"  style="success"/>
<button label="btn danger"  style="danger"/>
<button label="btn warning"  style="warning"/>
<button label="btn info"  style="info"/>
<button label="btn light"  style="light"/>
<button label="btn dark"  style="dark"/>
<button label="btn link"  style="link"/>
<button label="btn outline" outline="true"/></ec:prettify>
				</ed:col>
			</ed:row>

			<ed:row>
				<ed:col size="6">
	                <h4>Button with icon</h4>
	                <p>You can add icon to any choosen buttons. See some example below:</p>
                	<ec:button label="button icon heart" style="success" size="sm" icon="heart" />
                	<ec:button label=" button icon camera" style="red" size="sm" icon="camera" />
                	<ec:button label="button icon briefcase" size="sm" outline="true" icon="briefcase"/>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><button label="button icon heart" style="success" size="sm" icon="heart" />
<button label=" button icon camera" style="red" size="sm" icon="camera" />
<button label="button icon briefcase" size="sm" outline="true" icon="briefcase"/></ec:prettify>
				</ed:col>
			</ed:row>				
			
			<ed:row>
				<ed:col size="6">
	                <h4>More variations</h4>
	                <p>Wrap a series of buttons with <code>&lt;ec:button-group/&gt;</code></p>
	                <ec:button-group>
	                	<ec:button label="primary" style="primary"/>
	                	<ec:button label="success" style="success"/>
	                	<ec:button label="warning" style="warning"/>
	                </ec:button-group>
				</ed:col>
				<ed:col size="6">
		            <ec:prettify linenums="true"><button label="primary" style="primary"/>
<button label="success" style="success"/>
<button label="warning" style="warning"/></ec:prettify>
				</ed:col>
			</ed:row>
			
			<ed:row>
				<ed:col size="6">
	                <h4>Button sizes</h4>
	                <p>There are 5 button sizes: lg and sm.</p>
                	<ec:button label="Large button" size="lg"/>
                	<ec:button label="Small button" size="sm" style="success"/>
                	<ec:button label="btn block level" block="true" style="warning"/>
				</ed:col>
				<ed:col size="6">
		            <ec:prettify linenums="true"><button label="Large button" size="lg"/>
<button label="Small button" size="sm" style="success"/>
<button label="btn block level" block="true" style="warning"/></ec:prettify>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="6">
				<ec:tabs>
					<ec:tabs-item active="true" icon="briefcase" title="One">
	                    <p><strong>Augue iriure</strong> dolorum per ex, ne iisque ornatus veritus duo. Ex nobis integre 
	                    lucilius sit, pri ea falli ludus appareat. Eum quodsi fuisset id, nostro patrioque qui id. Nominati 
	                    eloquentiam in mea.</p>
	                    <p>No eum sanctus vituperata reformidans, dicant abhorreant ut pro. Duo id enim iisque praesent, 
	                    amet intellegat per et, solet referrentur eum et.</p>
					</ec:tabs-item>
					<ec:tabs-item title="two">
						<p>Tale dolor mea ex, te enim assum suscipit cum, vix aliquid omittantur in. Duo eu cibo dolorum 
						menandri, nam sumo dicit admodum ei. Ne mazim commune honestatis cum, mentitum phaedrum sit et.</p>
					</ec:tabs-item>
					<ec:tabs-item title="three">
                    	<p>Cu cum commodo regione definiebas. Cum ea eros laboramus, audire deseruisse his at, munere 
                    	aeterno ut quo. Et ius doming causae philosophia, vitae bonorum intellegat usu cu.</p>
					</ec:tabs-item>
				</ec:tabs>
				</ed:col>
				<ed:col size="6">
		            <ec:prettify linenums="true"><tabs>
	<tabs-item active="true" icon="briefcase" title="One">
        <p><strong>Augue iriure</strong> dolorum per ex, ne iisque ornatus veritus duo. Ex nobis integre 
        lucilius sit, pri ea falli ludus appareat. Eum quodsi fuisset id, nostro patrioque qui id. Nominati 
        eloquentiam in mea.</p>
        <p>No eum sanctus vituperata reformidans, dicant abhorreant ut pro. Duo id enim iisque praesent, 
        amet intellegat per et, solet referrentur eum et.</p>
	</tabs-item>
	<tabs-item title="two">
		<p>Tale dolor mea ex, te enim assum suscipit cum, vix aliquid omittantur in. Duo eu cibo dolorum 
		menandri, nam sumo dicit admodum ei. Ne mazim commune honestatis cum, mentitum phaedrum sit et.</p>
	</tabs-item>
	<tabs-item title="three">
       	<p>Cu cum commodo regione definiebas. Cum ea eros laboramus, audire deseruisse his at, munere 
       	aeterno ut quo. Et ius doming causae philosophia, vitae bonorum intellegat usu cu.</p>
	</tabs-item>
</tabs></ec:prettify>
				</ed:col>
			</ed:row>
			<ed:row>
				<ed:col size="6">
	                <h4>Accordion</h4>
	                <ec:accordion>
	                	<ec:accordion-item title="one">
		                    <p><strong>Augue iriure</strong> dolorum per ex, ne iisque ornatus veritus duo. Ex nobis integre 
		                    lucilius sit, pri ea falli ludus appareat. Eum quodsi fuisset id, nostro patrioque qui id. Nominati 
		                    eloquentiam in mea.</p>
		                    <p>No eum sanctus vituperata reformidans, dicant abhorreant ut pro. Duo id enim iisque praesent, 
		                    amet intellegat per et, solet referrentur eum et.</p>
	                	</ec:accordion-item>
	                	<ec:accordion-item title="two">
		                    <p>Tale dolor mea ex, te enim assum suscipit cum, vix aliquid omittantur in. Duo eu cibo dolorum menandri, 
		                    nam sumo dicit admodum ei. Ne mazim commune honestatis cum, mentitum phaedrum sit et.</p>
	                	</ec:accordion-item>
	                	<ec:accordion-item title="three">
		                    <p>Cu cum commodo regione definiebas. Cum ea eros laboramus, audire deseruisse his at, munere aeterno ut 
		                    quo. Et ius doming causae philosophia, vitae bonorum intellegat usu cu.</p>
	                	</ec:accordion-item>
	                </ec:accordion>
				</ed:col>
				<ed:col size="6">
		            <ec:prettify linenums="true"><accordion>
	<accordion-item title="one">
	     <p><strong>Augue iriure</strong> dolorum per ex, ne iisque ornatus veritus duo. Ex nobis integre 
	     lucilius sit, pri ea falli ludus appareat. Eum quodsi fuisset id, nostro patrioque qui id. Nominati 
	     eloquentiam in mea.</p>
	     <p>No eum sanctus vituperata reformidans, dicant abhorreant ut pro. Duo id enim iisque praesent, 
	     amet intellegat per et, solet referrentur eum et.</p>
	</accordion-item>
	<accordion-item title="two">
	     <p>Tale dolor mea ex, te enim assum suscipit cum, vix aliquid omittantur in. Duo eu cibo dolorum menandri, 
	     nam sumo dicit admodum ei. Ne mazim commune honestatis cum, mentitum phaedrum sit et.</p>
	</accordion-item>
	<accordion-item title="three">
	     <p>Cu cum commodo regione definiebas. Cum ea eros laboramus, audire deseruisse his at, munere aeterno ut 
	     quo. Et ius doming causae philosophia, vitae bonorum intellegat usu cu.</p>
	</accordion-item>
</accordion></ec:prettify>
				</ed:col>
			</ed:row>
			
			<ed:row>
				<ed:col size="6">
                	<h4>Event</h4>
                	<ec:button label="btn default">
                		<ec:event type="click">
                			alert("click");
                		</ec:event>
                	</ec:button>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><button label="btn default">
	<event type="click">
		alert("click");
	</event>
</button></ec:prettify>
				</ed:col>
			</ed:row>

			<ed:row>
				<ed:col size="6">
	                <h4>Alerts</h4>
	                <ec:alert>
	                	<strong>Warning!</strong> Best check yo self, you're not looking too good.
	                </ec:alert>
	                <ec:alert style="danger">
	                	<strong>Darger!</strong> Best check yo self, you're not looking too good.
	                </ec:alert>
	                <ec:alert style="success">
	                	<strong>Success</strong> Best check yo self, you're not looking too good.
	                </ec:alert>
	                <ec:alert style="info">
	                	<strong>Info!</strong> Best check yo self, you're not looking too good.
	                </ec:alert>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><alert>
	<strong>Warning!</strong> Best check yo self, you're not looking too good.
</alert>
<alert style="error">
	<strong>Error!</strong> Best check yo self, you're not looking too good.
</alert>
<alert style="success">
	<strong>Success</strong> Best check yo self, you're not looking too good.
</alert>
<alert style="info">
	<strong>Info!</strong> Best check yo self, you're not looking too good.
</alert></ec:prettify>
				</ed:col>
			</ed:row>

			<ed:row>
				<ed:col size="6">
	                <h4>Testimonial</h4>
	                <ec:testimonial name="Testimonial name" image="/img/user.png">
		                There are many variations of passages of randomised words which don't look even slightly 
		                believable. You need to be sure there isn't anything embarrassing of text.
		                <ec:testimonial-info>
		                	Name, <a href="#">www.sitename.com</a>
		                </ec:testimonial-info>
	                </ec:testimonial>
				</ed:col>
				<ed:col size="6">
					<ec:prettify linenums="true"><testimonial name="Testimonial name" image="/img/user.png">
	There are many variations of passages of randomised words which don't look even slightly 
	believable. You need to be sure there isn't anything embarrassing of text.
	<testimonial-info>
		Name, <a href="#">www.sitename.com</a>
	</testimonial-info>
</testimonial></ec:prettify>
				</ed:col>
			</ed:row>
			
		</ed:container>    
    </section>
	 
	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>