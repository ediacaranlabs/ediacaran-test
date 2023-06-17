<%@taglib uri="http://java.sun.com/jsp/jstl/core"                   prefix="c"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/components" prefix="ec"%>
<%@taglib uri="https://www.uoutec.com.br/ediacaran/tags/designer"   prefix="ed"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"              prefix="fn"%>
<%@page trimDirectiveWhitespaces="true" %>
<ec:load-data file="sidebar" var="pageObjects" />
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
						<h2>Sidebar</h2>
					</div>
				</ed:col>
				<ed:col size="8">
					<ec:breadcrumb title="Sidebar">
						<ec:breadcrumb-path icon="home" text="" lnk="#" />
						<ec:breadcrumb-path text="Features" lnk="#" />
					</ec:breadcrumb>
				</ed:col>
			</ed:row>
		</ed:container>
	</section>

	<ec:sidebar-group id="pageBody" show="true">

		<ec:sidebar>
			<ed:container>
				<ec:menu-bar id="${pageObjects['leftMenu']['id']}" 
						classStyle="${pageObjects['leftMenu']['classStyle']}" 
						expand="${pageObjects['leftMenu']['expand']}" 
						style="${pageObjects['leftMenu']['style']}">
						<ec:menu-body>
							<ec:menu-itens align="right">
								<c:forEach items="${pageObjects['leftMenu']['itens']}" var="menu">
									<c:choose>
										<c:when test="${!empty menu.value['itens']}">
											<ec:menu>
												<ec:menu-label>${menu.value['name']}</ec:menu-label>
												<ec:menu-itens>
													<c:forEach items="${menu.value['itens']}" var="item">
														<ec:menu-item href="${item.value['link']}">${item.value['name']}</ec:menu-item>
													</c:forEach>
												</ec:menu-itens>
											</ec:menu>
										</c:when>
										<c:otherwise>
											<ec:menu-item href="${menu.value['link']}">${menu.value['name']}</ec:menu-item>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ec:menu-itens>
						</ec:menu-body>
				</ec:menu-bar>
			</ed:container>
		</ec:sidebar>

		<ec:sidebar-content>
			<ec:body id="content-body">
    			<ed:container>
	 				<ec:menu-toggler menuID="pageBody">
						<ec:icon icon="bars" size="1" />
					</ec:menu-toggler>
					
			<ec:prettify linenums="true"><sidebar-group id="pageBody" show="true">
	<sidebar>
		<container>
			<menu-bar id="menuid" ... >
				...
			</menu-bar>
		</container>
	</sidebar>
	<sidebar-content>
		<body id="content-body">
			<container>
				<menu-toggler menuID="pageBody">
					<icon icon="bars" size="1" />
				</menu-toggler>
				My page
				...
   			</container>
		</body>
	</sidebar-content>
</sidebar-group></ec:prettify>
					
					<h3>My page</h3>
					
					<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in placerat ex. Aliquam erat volutpat. In non aliquam ligula. In et accumsan tellus. Vestibulum ultricies, nunc non convallis semper, justo nulla blandit libero, eu molestie felis est quis ante. Cras fermentum vitae quam rutrum feugiat. In fermentum tempus massa eu faucibus. Fusce mattis quam sit amet risus sollicitudin, a vehicula mauris varius. Donec commodo, erat nec hendrerit consequat, dui libero varius leo, vitae sagittis est mauris in sapien. Nam molestie, lorem eu sagittis sollicitudin, tellus velit commodo odio, a congue nisi nibh nec magna. Aliquam sit amet lacus ut lectus tempus sollicitudin convallis non ex. Cras pulvinar est et tristique rhoncus. Donec finibus, nulla sit amet faucibus gravida, metus ligula ullamcorper sapien, sit amet efficitur magna tellus eget ante.
					</p>
					<p>
					Nulla aliquam, enim non elementum consequat, tellus ex semper lectus, a laoreet sapien ipsum id justo. Curabitur fermentum placerat velit nec viverra. Nulla accumsan et eros eget semper. Sed id urna sit amet enim pellentesque maximus. Sed augue ante, mollis vel semper quis, eleifend id leo. Donec aliquet lacus augue, ut elementum leo tincidunt id. Nullam sed hendrerit dui. Proin eu porta dolor. Fusce ultricies nunc et dictum rutrum. Sed nisl massa, scelerisque id eleifend at, faucibus nec lacus. Aliquam luctus, justo in dignissim maximus, odio nisi gravida leo, et varius ipsum dui a ipsum. Fusce eget tempus nibh, quis commodo diam. Fusce at blandit dolor. Sed posuere lorem et turpis maximus eleifend. Quisque a molestie est.
					</p>
					<p>
					Mauris justo nunc, vehicula vel laoreet a, posuere id libero. Curabitur elementum massa eget ante ultrices, et aliquet nibh fringilla. Ut mi lorem, viverra at arcu lobortis, placerat volutpat sapien. Maecenas ornare volutpat leo, non condimentum velit ornare a. Pellentesque eget varius dui. Nullam et elementum ex. Donec a est convallis, pretium nunc et, tempus risus. Aliquam posuere tempus metus, at lobortis lectus efficitur a. Suspendisse mi felis, sodales non urna sed, scelerisque dictum ligula.
					</p>
					<p>
					Cras posuere metus vitae lacus ornare dictum. Cras molestie dolor dictum laoreet rutrum. Vestibulum nec nunc ac eros gravida aliquet. Cras rutrum ante ut ex pellentesque sagittis. Nullam aliquet nulla vitae dui venenatis tempus. Mauris molestie tincidunt enim, sit amet vehicula lacus ornare eu. Aenean sit amet auctor eros. Duis non metus quis magna faucibus faucibus. Cras sit amet odio eu mi rhoncus mollis sit amet id orci. Donec ut euismod orci. Morbi dictum lorem nunc, ut lacinia ipsum dictum nec.
					</p>
					<p>
					Etiam convallis convallis rhoncus. Vivamus euismod libero id dui bibendum, eu vestibulum magna placerat. Integer at orci massa. Sed commodo tincidunt neque, tempor viverra nunc tristique gravida. In rutrum urna id vulputate laoreet. Phasellus id risus ut enim sagittis ultricies. Sed rhoncus urna sed orci varius feugiat. Ut euismod tortor et tellus hendrerit, iaculis pretium arcu feugiat. Ut tempor turpis vitae interdum rhoncus.
					</p>
					<p>
					Sed eleifend augue ac ipsum tincidunt tempus. Nulla molestie maximus nunc, sit amet luctus nunc accumsan et. Sed dictum placerat odio in finibus. Phasellus non viverra tellus, id vehicula ante. Pellentesque imperdiet ipsum sit amet arcu vestibulum malesuada. Cras nec tristique quam. Pellentesque consequat a orci eu vehicula. Proin massa ante, varius quis egestas ac, congue ut ex. Sed ac eros viverra, porttitor est in, rhoncus arcu. Nullam venenatis a mauris eu feugiat. Nulla lacinia id diam nec bibendum. Sed erat libero, gravida ac convallis non, bibendum quis est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
					</p>
					<p>
					Donec eget quam quis ipsum elementum auctor id ac turpis. Aliquam sit amet nulla tincidunt, fermentum libero et, vestibulum arcu. Integer sagittis id enim vel aliquam. Proin maximus ipsum non dapibus dictum. Sed sit amet lacus sed massa fermentum fringilla. Praesent consequat molestie enim, at scelerisque velit rutrum ac. Suspendisse quis ullamcorper ligula, in suscipit sem. Phasellus euismod, nibh ac rhoncus venenatis, ligula est scelerisque neque, a varius dui turpis ut felis.
					</p>
					<p>
					Nullam suscipit libero vel purus volutpat maximus. Vestibulum sed diam augue. Mauris eget molestie eros, eget cursus eros. Sed eget pellentesque neque. Cras auctor sed nulla at consequat. Donec nec orci tempor eros sollicitudin pretium non vitae neque. In sit amet dignissim nunc. Sed risus metus, dapibus id augue eu, pellentesque bibendum elit. Nulla consectetur malesuada enim, nec lacinia ipsum ullamcorper nec. Etiam aliquet ipsum tincidunt erat imperdiet, ac tempor risus consectetur. Aliquam luctus lorem vestibulum erat molestie imperdiet. Vestibulum varius, neque vel mattis elementum, orci mauris auctor magna, sit amet finibus dolor nisl nec erat. Ut consectetur et nunc sed placerat.
					</p>
					<p>
					Donec eleifend gravida metus, quis lobortis nulla tristique quis. Donec porttitor convallis justo ac ultrices. Proin congue augue sit amet eros tempus efficitur. Vivamus tincidunt dapibus viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam finibus sagittis felis id auctor. Phasellus lacinia, tellus sit amet viverra elementum, velit ex semper est, sed pretium mi odio vitae nunc. Praesent vehicula aliquam rutrum. Vestibulum pulvinar ligula eget gravida pellentesque. Pellentesque auctor tellus id velit convallis, sit amet pellentesque sem congue. Integer eget eleifend ipsum, sed dapibus dolor. Phasellus laoreet ullamcorper ornare. Vestibulum quis lorem mollis, vehicula lorem id, congue arcu.
					</p>
					<p>
					Donec convallis, eros in vestibulum ultricies, nulla sapien dictum risus, non convallis felis ante in est. Pellentesque mollis, leo non tincidunt tristique, odio augue lobortis lorem, vitae vestibulum elit est ac diam. Nunc pellentesque nec elit in malesuada. Nunc mollis ante ut tortor rhoncus, vitae ullamcorper tortor rutrum. Nulla facilisi. Fusce id dapibus turpis. In vitae ullamcorper nulla, sit amet facilisis nisi. Curabitur auctor ante ut lobortis malesuada. Nunc congue facilisis magna eu pulvinar.
					</p>
					<p>
					Duis leo turpis, blandit at sem sed, tincidunt finibus lacus. Nulla faucibus, quam sit amet feugiat fringilla, lorem tellus pellentesque erat, non accumsan turpis augue vestibulum justo. Nulla ipsum ex, ultrices sit amet tellus quis, interdum placerat nunc. Phasellus dictum, lorem nec tristique tristique, lacus magna vehicula mauris, eu ultrices ante risus vel massa. Donec at bibendum magna. Aenean elementum in nulla vel ullamcorper. Maecenas fringilla ante mi, eu suscipit ante vulputate ut.
					</p>
					<p>
					Phasellus vel pulvinar nibh. Suspendisse tempus congue tempor. Nullam ultricies laoreet leo, nec hendrerit tortor hendrerit tincidunt. Aliquam non feugiat metus, vel porttitor quam. Maecenas dictum tincidunt arcu, et consectetur elit lacinia ut. Ut condimentum mattis enim, sit amet consequat dui luctus eu. In et vestibulum neque. Mauris eget laoreet eros, imperdiet sodales nisi. Etiam eu hendrerit metus, nec convallis magna. Aenean pellentesque felis luctus semper rutrum. Sed iaculis nulla tincidunt libero maximus, vitae tincidunt tortor euismod. Sed eget mattis lacus, ut volutpat est.
					</p>
					<p>
					Maecenas rutrum imperdiet nisl, a commodo enim scelerisque ac. Nunc aliquam nulla augue, sed scelerisque velit suscipit at. Duis vitae scelerisque mauris. Proin luctus, orci vel bibendum pretium, dolor erat lobortis dolor, sit amet vestibulum urna dolor ut neque. Curabitur ut ex aliquam, pharetra metus quis, egestas mauris. Suspendisse eget libero elit. Nulla vehicula felis urna, at laoreet turpis aliquet ut.
					</p>
					<p>
					Curabitur tristique sapien et dolor malesuada, vitae varius turpis sollicitudin. Sed sit amet rhoncus lacus. Vestibulum nulla dui, mattis at leo et, tempor vulputate lorem. Integer hendrerit nunc a sapien maximus, non semper nunc consectetur. Vivamus at diam hendrerit, molestie elit sit amet, commodo elit. Praesent ligula lectus, faucibus at leo ac, suscipit rhoncus odio. Donec risus tellus, eleifend dignissim dignissim sed, imperdiet vitae ligula. Quisque vitae massa id tortor porttitor interdum. Nunc vel augue justo. Donec congue dapibus nunc sit amet mattis. Maecenas finibus est in ante gravida imperdiet. Vestibulum mattis tellus vel luctus accumsan.
					</p>
					<p>
					Phasellus fermentum ultrices placerat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent scelerisque iaculis tempus. Nunc ut dui cursus nunc gravida sagittis. Ut nunc velit, sagittis eget consequat facilisis, finibus sed ipsum. Integer tellus odio, blandit ac magna eget, tristique viverra felis. Aliquam vitae ipsum varius, hendrerit libero sit amet, accumsan purus.
					</p>
					<p>
					Integer magna erat, dapibus sit amet arcu quis, pulvinar gravida dui. Phasellus volutpat, lorem sed semper tempor, orci dolor tempor nunc, ac semper tellus neque in neque. Phasellus vulputate fermentum ligula, dapibus pellentesque odio scelerisque id. Morbi scelerisque turpis quis leo lobortis egestas. Etiam luctus placerat tortor. Aenean nec mauris cursus ex fermentum congue. Praesent eu ante mi. Sed fringilla ex sed diam auctor blandit. Ut cursus, velit ac luctus tincidunt, ex libero malesuada nisi, at commodo sem enim in odio. Quisque posuere arcu odio, ac laoreet enim rhoncus id. Nunc fringilla sapien purus, et sollicitudin arcu finibus ut. Cras est purus, laoreet non nibh tempor, hendrerit tempus mauris.
					</p>
					<p>
					Maecenas sit amet mollis lorem, a lacinia nunc. Sed nibh lorem, fringilla dignissim ullamcorper quis, mattis sed felis. Praesent non imperdiet orci. Nullam mollis, metus nec malesuada fermentum, lectus nisi finibus augue, at sodales felis lacus maximus tortor. Nulla suscipit vulputate quam nec ornare. Vestibulum sollicitudin justo vel sapien vehicula iaculis. Morbi molestie lacus sed velit euismod, eu tincidunt lorem blandit. Sed nibh purus, fermentum sit amet eleifend at, interdum et ipsum. Nulla a purus libero. Donec rutrum mauris massa, ac aliquam massa placerat eget. Donec vel ipsum consectetur, sagittis dolor in, suscipit ante. Nam non sollicitudin urna, et cursus velit. Sed id leo eget sapien consequat consequat. Aenean ullamcorper, nisi sed dictum consectetur, lorem velit dignissim nisl, aliquet faucibus elit lectus eu tellus. Praesent fringilla eros at nibh fringilla, ac dapibus enim feugiat.
					</p>
					<p>
					Fusce elementum felis et ante tincidunt, at eleifend purus consectetur. Maecenas ornare sem sit amet mattis consequat. Vestibulum metus ex, tempus sed dolor quis, tempus ornare erat. Nullam consectetur velit tortor, congue lacinia enim mattis vulputate. Etiam urna elit, vehicula non mi eu, maximus tristique dui. Pellentesque tincidunt felis nec dolor convallis aliquet. Nam rutrum fringilla lacus, ut maximus enim. Donec venenatis augue gravida nisi dapibus imperdiet. Sed dictum eleifend lorem nec facilisis. Integer eget nibh lectus. Donec gravida neque id felis tincidunt, at egestas libero congue. Vivamus interdum vulputate lacinia. Nullam a mollis nisi.
					</p>
					<p>
					Donec at porta nisi. Vivamus cursus magna ex. Integer diam nunc, fermentum ac ex quis, rutrum blandit nunc. Sed ac mi eu massa eleifend pellentesque a vitae lacus. Pellentesque elementum velit sit amet sapien dapibus, sit amet rhoncus tortor accumsan. Vestibulum tincidunt risus a interdum interdum. Fusce iaculis tortor ligula, consequat laoreet libero interdum a. Vestibulum at interdum nibh. Mauris placerat sit amet ipsum ac condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
					</p>
					<p>
					In dapibus ligula sed arcu consectetur, eu ultricies metus tempus. Maecenas at dapibus sem, eget sodales turpis. Sed sit amet dolor justo. Integer congue gravida pellentesque. Nullam vel vehicula orci, eu bibendum sem. Sed nec scelerisque magna. Etiam aliquam, orci eget gravida maximus, magna augue pulvinar erat, id finibus ligula dui id lorem. Nulla porta ac sem quis tristique. Curabitur ultrices est arcu, quis dignissim dolor condimentum eu. Sed sodales nisi quis porta dapibus. Mauris sit amet hendrerit urna, nec interdum lorem. Morbi maximus at est semper vehicula. Mauris faucibus tempor turpis, vitae auctor velit commodo a.
					</p>
					<p>
					Phasellus et dui eros. Integer convallis felis eget egestas congue. Nunc volutpat metus lacus, in accumsan urna aliquam in. Fusce placerat libero sed turpis fermentum convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis pulvinar purus id varius aliquet. Sed tincidunt dolor nec mauris feugiat, sed ultricies est tempor. Etiam pharetra sit amet arcu eu luctus. Sed sed molestie lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur maximus lorem sit amet leo lobortis semper. Phasellus pretium commodo nulla, at imperdiet dui aliquet nec. Vivamus eget justo ornare, dapibus dolor eget, auctor augue. Cras eget odio et felis pulvinar feugiat tincidunt at ante.
					</p>
					<p>
					Sed quis rutrum diam. Morbi sed egestas nunc. Aenean mattis feugiat orci, in imperdiet magna pharetra eu. Aliquam at velit in purus viverra consectetur eu non arcu. Aliquam nisl odio, ultricies vel ipsum eu, placerat malesuada augue. In tincidunt tincidunt ipsum vitae pharetra. In vehicula sit amet magna in placerat.
					</p>
					<p>
					Nam ut eros sit amet orci cursus finibus. Cras commodo tincidunt felis in molestie. Sed ut ligula venenatis, luctus urna ac, sagittis justo. Nunc lorem mi, tempus et velit ac, fermentum congue lectus. Mauris bibendum ultricies dolor, at dapibus leo vehicula varius. Morbi gravida, turpis luctus placerat auctor, lorem lectus tempus orci, at pellentesque massa leo sed risus. Vivamus aliquam condimentum finibus.
					</p>
					<p>
					Suspendisse ornare mauris ut ipsum suscipit maximus. Morbi tortor orci, varius sed rutrum vel, tristique vestibulum felis. Maecenas a lacus faucibus, blandit nulla vitae, feugiat tellus. Duis suscipit lectus velit, at pretium eros consequat eu. Maecenas elementum felis vel ex maximus eleifend. Maecenas eu nibh at odio dignissim scelerisque a at ante. Vestibulum eget lorem nec mauris rutrum egestas aliquam eu odio. Donec mi elit, pulvinar at felis id, semper congue lectus. Vestibulum eget purus commodo, imperdiet lacus quis, elementum augue. In ut diam eu dui vestibulum convallis. Proin lacus ex, laoreet a orci eu, porta hendrerit neque. Donec ornare mauris leo, sit amet egestas augue fringilla ac.
					</p>
					<p>
					Cras quis quam malesuada, pretium mauris ac, facilisis nisl. Aliquam non tempor nunc, in iaculis est. Maecenas malesuada est eu eros suscipit euismod. Morbi ac sem augue. Nulla faucibus tincidunt neque vel auctor. Fusce lorem neque, vehicula a tellus pellentesque, finibus pellentesque lorem. Mauris maximus velit at ipsum lacinia interdum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent ut libero at leo fermentum vulputate. Nulla porttitor, risus sed lacinia viverra, quam felis tristique lorem, id pellentesque arcu tortor eu eros. Sed efficitur diam mollis varius placerat. Donec mattis augue id interdum accumsan. Quisque lobortis ut mi sit amet sodales. Nulla facilisi.
					</p>
					<p>
					Proin rutrum neque sit amet faucibus convallis. Nam egestas efficitur tempor. Etiam nisi magna, sollicitudin non maximus quis, iaculis vel ipsum. Nunc fringilla, tellus egestas congue mollis, neque purus auctor tortor, et rutrum nisi mauris vitae metus. Pellentesque ac mi libero. Sed laoreet efficitur diam, et scelerisque nunc consectetur eget. Sed iaculis convallis ipsum vel bibendum. Nunc blandit porttitor sagittis. Sed tempus dictum lorem eget aliquet. Pellentesque eleifend ex ut pellentesque congue. Pellentesque risus tortor, pretium non lorem a, vestibulum rutrum nulla. In hac habitasse platea dictumst. Duis auctor placerat placerat.
					</p>
					<p>
					Nulla metus risus, placerat non lorem eget, suscipit egestas justo. Mauris rhoncus, sem maximus sollicitudin semper, est est porta sem, a vehicula diam est eget nisi. Duis pulvinar velit massa, eu tincidunt metus mollis tempus. Fusce ac cursus dolor. Curabitur eu aliquet sapien, nec volutpat lectus. Aenean eleifend ligula pellentesque tellus auctor, id lobortis magna pulvinar. Quisque sed eros malesuada, suscipit nibh efficitur, fermentum ligula. Nam tempus vulputate erat at fermentum. Phasellus a consectetur augue, nec ultrices dolor. Cras lacinia varius sem, ut suscipit dolor vulputate ut. Mauris in rutrum enim, eu dapibus dui. Sed faucibus vitae enim non cursus. Donec quis aliquet nisi. Suspendisse lacus dui, tristique ut congue in, accumsan nec nisl.
					</p>
					<p>
					Maecenas eget nunc imperdiet, mattis ex sit amet, luctus est. Ut tempus dui a faucibus dictum. Quisque venenatis enim sed augue convallis, id blandit quam tristique. Quisque consequat elementum maximus. In hac habitasse platea dictumst. Phasellus in nunc et leo mattis accumsan. Suspendisse ornare eu lorem id tempus. Duis neque lorem, cursus eu suscipit feugiat, viverra a augue. Nulla facilisi. Sed arcu risus, tristique ac placerat ac, eleifend id ipsum. Curabitur diam enim, condimentum et congue ut, maximus a lorem. Cras lobortis vitae felis efficitur finibus. Cras eu dolor vel ipsum dignissim lobortis.
					</p>
					<p>
					Sed in tincidunt nibh. Curabitur pharetra augue blandit efficitur pellentesque. Morbi nisi elit, ultricies in pharetra id, suscipit sit amet nisi. Sed ultrices tortor ac suscipit posuere. Nulla sit amet dictum nibh. In pulvinar erat non est maximus pretium. Sed gravida efficitur arcu. In hac habitasse platea dictumst.
					</p>
					<p>
					Mauris volutpat nibh sit amet feugiat dignissim. Morbi fringilla sit amet tellus fringilla lacinia. Duis vitae ipsum orci. Sed blandit iaculis viverra. Ut euismod nisl et velit lobortis fringilla. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer commodo ultrices magna. Nullam faucibus vestibulum blandit. Aliquam sit amet sapien vitae est porttitor convallis id a odio.
					</p>
					<p>
					Donec metus urna, dignissim eget risus ac, egestas malesuada massa. Maecenas lobortis ante id fringilla imperdiet. Sed euismod scelerisque dolor in tincidunt. Nam vel risus at odio hendrerit dapibus. Nam iaculis tincidunt sem at fermentum. Nulla imperdiet molestie mollis. Vivamus ac placerat turpis. Nulla euismod dictum congue. Praesent sodales metus orci, ac consequat mauris dictum non. Curabitur commodo aliquet diam consectetur scelerisque. Maecenas nec turpis ut nisi sollicitudin fermentum sed ut est. In vel metus varius, imperdiet risus et, lacinia leo. Aenean aliquet fringilla sapien eget faucibus.
					</p>
					<p>
					Vivamus vel lorem venenatis, congue tellus quis, tempus urna. Nam nec hendrerit sapien. Cras vestibulum, nulla a cursus lacinia, diam nisi luctus libero, sit amet ornare lorem dui vitae diam. Integer imperdiet nibh felis. Curabitur porta velit rhoncus ipsum facilisis, sed finibus magna ultrices. Quisque volutpat dapibus dolor eget sagittis. Vestibulum ut libero quis justo posuere malesuada. Sed ut tellus a magna tristique pretium at eget augue.
					</p>
					<p>
					Duis et elementum nulla. Donec tincidunt pellentesque est et porttitor. Nam vitae urna vestibulum, vulputate dolor nec, faucibus urna. Aliquam erat volutpat. Sed tempor est ac purus pellentesque convallis. Aenean sit amet tristique massa. Fusce vestibulum suscipit ullamcorper. Vestibulum eu lorem vel libero posuere vehicula sit amet quis diam. Phasellus porta gravida convallis. Ut porta non ante et condimentum. Donec justo nunc, elementum ac dolor vitae, placerat pretium felis. Morbi quis fringilla neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut placerat pellentesque mollis. Pellentesque rutrum laoreet mauris.
					</p>
					<p>
					In eget urna hendrerit, sagittis velit maximus, cursus nisi. Mauris dictum augue sit amet elementum dictum. Fusce condimentum enim ante, vel posuere enim molestie sit amet. Ut iaculis orci luctus pellentesque vehicula. Donec a lorem et quam efficitur maximus at et sapien. Etiam id metus tristique, porta nisl eget, dictum ligula. Etiam sit amet mattis ligula. Pellentesque sit amet vulputate mauris. Cras leo turpis, dictum nec efficitur nec, commodo ac nisi.
					</p>
					<p>
					Mauris ultrices vehicula cursus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper interdum turpis, non pulvinar sapien sagittis vel. Nulla dapibus cursus orci, non accumsan neque tempus rutrum. Sed vitae porta quam. Etiam malesuada rhoncus euismod. Integer ullamcorper orci dolor, in tristique enim pellentesque sed. Curabitur ac tristique ante, tempor pretium ipsum. Quisque libero sapien, commodo eu libero a, luctus convallis tortor. Duis fringilla vehicula lacus a tempus.
					</p>
					<p>
					Duis quis ex ac elit ullamcorper fringilla sit amet ut metus. Vestibulum at nulla mauris. Mauris suscipit neque felis, faucibus venenatis odio finibus sed. Praesent molestie facilisis ultrices. Duis tristique massa orci, sit amet ullamcorper lorem venenatis in. Sed nunc augue, vehicula suscipit imperdiet in, semper sed augue. Morbi leo lacus, molestie quis ultricies a, maximus aliquet augue. Fusce venenatis, urna tincidunt laoreet rhoncus, sem turpis pharetra nisi, vehicula commodo metus enim vitae quam. Pellentesque in pulvinar purus. Pellentesque sed sagittis lacus. Cras semper pulvinar semper. Curabitur malesuada augue at porttitor convallis. Vestibulum nec laoreet arcu. Suspendisse eget lobortis justo, et fringilla purus.
					</p>
					<p>
					Donec neque est, imperdiet eget ultricies at, venenatis at nisi. Morbi laoreet vehicula interdum. Donec ultricies bibendum diam, fermentum porta orci. Vestibulum pretium sapien vel sapien venenatis, sit amet ultrices dui sodales. Suspendisse blandit ac odio a posuere. Cras dignissim est sed neque eleifend lobortis. Ut porttitor elementum ligula a volutpat. Vivamus scelerisque, sem in porta imperdiet, nunc quam dictum magna, quis pharetra libero lacus quis erat. Suspendisse finibus dui a bibendum blandit. Aliquam auctor neque eu facilisis congue. Suspendisse at condimentum mauris, volutpat aliquet purus. Nunc tempus, metus nec ornare sagittis, diam elit luctus lorem, et egestas dui justo nec tortor. Proin sodales justo a mi varius volutpat. Sed non vulputate turpis, sit amet efficitur nisi.
					</p>
					<p>
					Suspendisse quis velit leo. Mauris aliquet libero vel odio fringilla, et facilisis lorem accumsan. Vivamus iaculis mattis arcu, a bibendum purus aliquam ac. Donec gravida facilisis sapien, non egestas urna dapibus eu. Cras bibendum orci eget vestibulum pellentesque. Vivamus turpis massa, condimentum et purus eget, congue posuere ipsum. Duis facilisis maximus sapien sed varius. Fusce mauris turpis, vehicula sed nibh id, pharetra auctor ante. Quisque nisi turpis, finibus a mi ac, ornare facilisis nunc.
					</p>
					<p>
					Phasellus orci sem, feugiat id lobortis nec, accumsan at est. Morbi augue arcu, congue vitae convallis eget, laoreet eget risus. Vivamus erat turpis, posuere sit amet nunc at, dapibus porta ipsum. Duis luctus odio id orci luctus, quis egestas ante ultricies. Aliquam auctor risus nec ultrices rhoncus. Integer sollicitudin ullamcorper eros at rutrum. Phasellus felis nunc, volutpat eu vehicula malesuada, gravida in lectus. Quisque at ligula vel nisl feugiat lobortis. Nunc fringilla efficitur tortor et efficitur. Nam odio risus, sodales nec ipsum vel, vehicula porttitor ipsum. Pellentesque eget cursus lorem. Maecenas a dictum enim, ac cursus purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer vel mattis lectus. Nulla id commodo neque.
					</p>
					<p>
					Maecenas semper, magna ac maximus aliquam, nulla sapien finibus tellus, cursus rutrum neque ipsum nec augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent neque magna, condimentum sit amet consequat ac, elementum nec ipsum. Duis mattis augue non imperdiet fringilla. Aliquam mauris neque, ornare in eleifend at, ultrices sed elit. Praesent hendrerit condimentum elit, eu euismod lacus posuere quis. Suspendisse tempor orci et mauris suscipit, sit amet venenatis purus auctor.
					</p>		

    			</ed:container>
			</ec:body>
		</ec:sidebar-content>
		
	</ec:sidebar-group>

	<ec:include uri="/includes/footer.jsp"/>
 
</body>
</html>