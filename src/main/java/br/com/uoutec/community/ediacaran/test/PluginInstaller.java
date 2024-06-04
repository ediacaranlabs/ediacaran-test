package br.com.uoutec.community.ediacaran.test;

import java.io.IOException;

import br.com.uoutec.application.SystemProperties;
import br.com.uoutec.application.io.VfsException;
import br.com.uoutec.application.security.FileSecurityPermissionActions;
import br.com.uoutec.community.ediacaran.front.objects.MenubarObjectsManagerDriver;
import br.com.uoutec.community.ediacaran.front.objects.PagesObjectsManagerDriver;
import br.com.uoutec.community.ediacaran.front.pub.Menu;
import br.com.uoutec.community.ediacaran.front.pub.MenuBar;
import br.com.uoutec.community.ediacaran.front.pub.widget.Widget;
import br.com.uoutec.community.ediacaran.front.pub.widget.WidgetException;
import br.com.uoutec.community.ediacaran.front.pub.widget.Widgets;
import br.com.uoutec.community.ediacaran.front.security.pub.AuthenticationMethodBuilder;
import br.com.uoutec.community.ediacaran.front.security.pub.WebSecurityManagerPlugin;
import br.com.uoutec.community.ediacaran.system.i18n.Plugini18nManager;
import br.com.uoutec.community.ediacaran.system.repository.ObjectMetadata;
import br.com.uoutec.community.ediacaran.system.repository.ObjectValue;
import br.com.uoutec.community.ediacaran.system.repository.ObjectsManagerDriver;
import br.com.uoutec.community.ediacaran.system.repository.ObjectsManagerDriver.ObjectsManagerDriverListener;
import br.com.uoutec.community.ediacaran.system.repository.ObjectsTemplateManager;
import br.com.uoutec.community.ediacaran.system.repository.PathMetadata;
import br.com.uoutec.ediacaran.AbstractWebServerBootstrap;
import br.com.uoutec.ediacaran.core.AbstractPlugin;
import br.com.uoutec.ediacaran.core.SecurityPolicyUpdater;
import br.com.uoutec.ediacaran.core.plugins.EntityContextPlugin;
import br.com.uoutec.ediacaran.core.plugins.PluginType;
import br.com.uoutec.ediacaran.core.security.PermissionType;
import br.com.uoutec.ediacaran.core.security.SecurityPermissionRequest;
import br.com.uoutec.ediacaran.web.tomcat.TomcatUtils;
import br.com.uoutec.entity.registry.RegistryException;

public class PluginInstaller 
	extends AbstractPlugin{

	private static final String FRONT_MENU_BAR_PATH     = "/front";

	private static final String FRONT_MENU_BAR          = "default";

	private static final String FRONT_FOOTER_MENU_BAR   = "footer_menu";
	
	private static final String FRONT_FOOTER2_MENU_BAR  = "footer_menu2";
	
	private static final String ADMIN_MENU_BAR_PATH     = "/admin";
	
	private static final String ADMIN_MENU_BAR          = "adminmenubar";
	
	private static final String ADMIN_TOP_MENU_BAR      = "admintopmenubar";
	
	private DefaultAdminMenuListener defaultAdminMenuListener;
	
	private DefaultFrontMenuListener defaultFrontMenuListener;
	
	@Override
	public void install() throws Throwable {
		installRootPath();
		installDefaultMenus();
		installWidgets();
		installSecurityConfig();
		installI18n();
	}

	@Override
	public void uninstall() throws Throwable {
		uninstallI18n();
		uninstallDefaultMenus();
		uninstallWidget();
		uninstallSecurityConfig();
		uninstallRootPath();
	}

	private void installRootPath() {
		PluginType pluginType = EntityContextPlugin.getEntity(PluginType.class);
		String publicPath = TomcatUtils.getPublicPath(pluginType.getConfiguration().getMetadata()).getAbsolutePath().getFullName();
		SystemProperties.setProperty("app.web", publicPath);
		
		SecurityPolicyUpdater securityPolicyUpdater = EntityContextPlugin.getEntity(SecurityPolicyUpdater.class);
		
		securityPolicyUpdater.grantPermissions(
				"front", 
				new SecurityPermissionRequest(PermissionType.FILE, publicPath + "/-", FileSecurityPermissionActions.ALL.name().toLowerCase())
		);
		
		ObjectsTemplateManager objectsManager = EntityContextPlugin.getEntity(ObjectsTemplateManager.class);
		
		PagesObjectsManagerDriver pageObjectDriver = new PagesObjectsManagerDriver();
		PagesObjectsManagerDriver oldPageObjectDriver = (PagesObjectsManagerDriver) objectsManager.getDriver(pageObjectDriver.getName());
		
		if(oldPageObjectDriver != null) {
			oldPageObjectDriver.getTemplatesIdMap().values().stream()
				.forEach((e)->pageObjectDriver.registerTemplate(e));
		}
		
		objectsManager.registerDriver(pageObjectDriver);
		
	}

	private void uninstallRootPath() {
		SystemProperties.setProperty("app.web", SystemProperties.getProperty("app.base") + AbstractWebServerBootstrap.WEBAPP_PATH);

		PluginType pluginType = EntityContextPlugin.getEntity(PluginType.class);
		String publicPath = TomcatUtils.getPublicPath(pluginType.getConfiguration().getMetadata()).getAbsolutePath().getFullName();
		
		SecurityPolicyUpdater securityPolicyUpdater = EntityContextPlugin.getEntity(SecurityPolicyUpdater.class);
		
		securityPolicyUpdater.revokePermission(
				"front", 
				new SecurityPermissionRequest(PermissionType.FILE, publicPath + "/-", FileSecurityPermissionActions.ALL.name().toLowerCase())
		);
		
		ObjectsTemplateManager objectsManager = EntityContextPlugin.getEntity(ObjectsTemplateManager.class);

		PagesObjectsManagerDriver pageObjectDriver = new PagesObjectsManagerDriver();
		PagesObjectsManagerDriver oldPageObjectDriver = (PagesObjectsManagerDriver) objectsManager.getDriver(pageObjectDriver.getName());
		
		if(oldPageObjectDriver != null) {
			oldPageObjectDriver.getTemplatesIdMap().values().stream()
				.forEach((e)->pageObjectDriver.registerTemplate(e));
		}
		
		objectsManager.registerDriver(pageObjectDriver);
		
	}
	
	private void installI18n() throws VfsException, IOException, ReflectiveOperationException {
		Plugini18nManager pi18n = EntityContextPlugin.getEntity(Plugini18nManager.class);
		pi18n.registerLanguages();
	}
	
	private void uninstallI18n() throws VfsException, IOException, ReflectiveOperationException {
		Plugini18nManager pi18n = EntityContextPlugin.getEntity(Plugini18nManager.class);
		pi18n.unregisterLanguages();
	}
	
	private void installDefaultMenus() {
		this.defaultAdminMenuListener = new DefaultAdminMenuListener();
		this.defaultFrontMenuListener = new DefaultFrontMenuListener();

		ObjectsTemplateManager objectsManager = EntityContextPlugin.getEntity(ObjectsTemplateManager.class);
		ObjectsManagerDriver menubarDriver = objectsManager.getDriver(MenubarObjectsManagerDriver.DRIVER_NAME);
		menubarDriver.addListener(this.defaultAdminMenuListener);
		menubarDriver.addListener(this.defaultFrontMenuListener);
	}

	private void installFrontDefaultMenu(MenuBar menubar) {
		
		Menu menu = menubar
			.addMenu("features")
				.setName("Recursos");
		
		menu
			.addItem("typography")
			.setName("Tipografia")
			.setResource("/typography.jsp");
		
		menu
			.addItem("table")
			.setName("Tabelas")
			.setResource("/table.jsp");
		
		menu
			.addItem("components")
			.setName("Componentes")
			.setResource("/components.jsp");

		menu
			.addItem("forms")
			.setName("Formulários")
			.setResource("/form.jsp");

		menu
			.addItem("flot")
			.setName("Gráficos Flot")
			.setResource("/flot.jsp");

		menu
			.addItem("resquest_response")
			.setName("Response template")
			.setResource("/form-request-response.jsp");

		menu
			.addItem("datatable")
			.setName("Data table")
			.setResource("/data-table.jsp");
		
		menu = menubar
			.addMenu("pages")
				.setName("Páginas");

		menu
			.addItem("pricing_box")
			.setName("Pricing Boxes")
			.setResource("/pricingbox.jsp");

		menu
			.addItem("sidebar")
			.setName("Menu lateral")
			.setResource("/sidebar.jsp");

		menu = menubar
			.addMenu("contato")
				.setName("Contato")
				.setResource("mailto:contact@uoutec.com.br");
		
	}
	
	private void installFrontFooterDefaultMenu(MenuBar menubar) {
		
		menubar
		.addMenu("pricing_box")
		.setName("Pricing Boxes")
		.setResource("/pricingbox.jsp");

		menubar
		.addMenu("sidebar")
		.setName("Menu lateral")
		.setResource("/sidebar.jsp");
		
	}

	private void installFrontFooter2DefaultMenu(MenuBar menubar) {
		
		menubar
		.addMenu("typography")
		.setName("Tipografia")
		.setResource("/typography.jsp");
	
		menubar
		.addMenu("table")
		.setName("Tabelas")
		.setResource("/table.jsp");
	
		menubar
		.addMenu("components")
		.setName("Componentes")
		.setResource("/components.jsp");

		menubar
		.addMenu("forms")
		.setName("Formulários")
		.setResource("/form.jsp");

		menubar
		.addMenu("flot")
		.setName("Gráficos Flot")
		.setResource("/flot.jsp");
		
	}
	
	private void installAdminDefaultMenu(MenuBar leftMenu) {
		
		leftMenu.addMenu("components")
			.setName("Components")
			.setIcon("tree")
			.setResource("#!/admin/components.jsp")
			.setOrder(1);

		leftMenu.addMenu("buttons")
		.setName("Buttons")
		.setIcon("tree")
		.setResource("#!/admin/buttons.jsp")
		.setOrder(1);
		
		leftMenu.addMenu("forms")
			.setName("Forms")
			.setIcon("edit")
			.setResource("#!/admin/form.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("typography")
			.setName("Typography")
			.setIcon("pencil")
			.setResource("#!/admin/typography.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("tables")
			.setName("Tables")
			.setIcon("table")
			.setResource("#!/admin/table.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("pricing_boxes")
			.setName("Pricing boxes")
			.setIcon("money")
			.setResource("#!/admin/pricingbox.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("flot_charts")
			.setName("Flot Charts")
			.setIcon("pie-chart")
			.setResource("#!/admin/flotcharts.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("resquest_response")
			.setName("Response Template")
			.setIcon("pie-chart")
			.setResource("#!/admin/form-request-response.jsp")
			.setOrder(1);

		leftMenu.addMenu("datatable")
			.setName("Data table")
			.setIcon("pie-chart")
			.setResource("#!/admin/data-table.jsp")
			.setOrder(1);
		
		Menu menu = leftMenu.addMenu("menu")
			.setName("Menu")
			.setIcon("tree")
			.setResource("#")
			.setOrder(1);
		
		menu.addItem("item_1")
				.setName("Item 1")
				.setIcon("tree")
				.setResource("#")
				.setOrder(1);
		menu.addItem("item_2")
				.setName("Item 2")
				.setIcon("tree")
				.setResource("#")
				.setOrder(1);
		menu.addItem("item_3")
				.setName("Item 3")
				.setIcon("tree")
				.setResource("#")
				.setOrder(1);
		
	}
	
	private void installAdminDefaultTopMenu(MenuBar topMenu) {
		
		topMenu.addMenu("messages")
			.setName("Messages")
			.setIcon("comments")
			.setBadgeStyle("danger")
			.setOrder(100);
		
		topMenu.addMenu("notification")
			.setName("Notification")
			.setIcon("bell")
			.setBadgeStyle("warning")
			.setOrder(99);
		
		Menu topMenu1 = topMenu.addMenu("menu")
				.setName("Menu")
				.setIcon("tree")
				.setResource("#")
				.setOrder(1);
			
		topMenu1.addItem("item_1")
					.setName("Item 1")
					.setIcon("tree")
					.setResource("#")
					.setOrder(1);
		topMenu1.addItem("item_2")
					.setName("Item 2")
					.setIcon("tree")
					.setResource("#")
					.setOrder(1);
		topMenu1.addItem("item_3")
					.setName("Item 3")
					.setIcon("tree")
					.setResource("#")
					.setOrder(1);
		
	}
	
	private void installWidgets() throws WidgetException {
		Widgets widgets = EntityContextPlugin.getEntity(Widgets.class);
		
		widgets.addWidget(new Widget("w1", "/admin/widgets/w1.jsp", 100));
		widgets.addWidget(new Widget("w2", "/admin/widgets/w2.jsp", 100));
		
	}
	
	private void installSecurityConfig() throws RegistryException {
		
		WebSecurityManagerPlugin webSecurityManagerPlugin = 
				EntityContextPlugin.getEntity(WebSecurityManagerPlugin.class);
	
		webSecurityManagerPlugin
			.addConstraint("/admin/manager/*")
				.addRole("manager")
				.addRole("user")
			.addConstraint("/admin/*")
				.addRole("user")
			.form()
				.setOption(AuthenticationMethodBuilder.LOGIN_PAGE, "/login")
				.setOption(AuthenticationMethodBuilder.ERROR_PAGE, "/login?error=true");
		
	}
	
	private void uninstallSecurityConfig() throws RegistryException {
	}
	
	private void uninstallWidget() throws Throwable {
		Widgets widgets = EntityContextPlugin.getEntity(Widgets.class);
		
		widgets.removeWidget("w2");
		widgets.removeWidget("w1");
		
	}

	private void uninstallDefaultMenus() throws RegistryException {
		ObjectsTemplateManager objectsManager = EntityContextPlugin.getEntity(ObjectsTemplateManager.class);
		ObjectsManagerDriver menubarDriver = objectsManager.getDriver(MenubarObjectsManagerDriver.DRIVER_NAME);
		
		menubarDriver.removeListener(this.defaultAdminMenuListener);
		menubarDriver.removeListener(this.defaultFrontMenuListener);
	}
	
	public class DefaultAdminMenuListener 
		implements ObjectsManagerDriverListener {

		public void afterLoad(ObjectMetadata omd, ObjectValue obj) {
			
			if(obj == null) {
				return;
			}

			PathMetadata pmd = omd.getPathMetadata();
			
			if(obj.getObject() instanceof MenuBar && pmd.getPath().equals(ADMIN_MENU_BAR_PATH)) {
				
				if(pmd.getId().equals(ADMIN_MENU_BAR)) {
					installAdminDefaultMenu((MenuBar)obj.getObject());
				}
				else
				if(pmd.getId().equals(ADMIN_TOP_MENU_BAR)) {
					installAdminDefaultTopMenu((MenuBar)obj.getObject());
				}
				
			}
			
		}
		
	}

	
	public class DefaultFrontMenuListener 
		implements ObjectsManagerDriverListener {

		public void afterLoad(ObjectMetadata omd, ObjectValue obj) {
			
			if(obj == null) {
				return;
			}
	
			PathMetadata pmd = omd.getPathMetadata();
			
			if(obj.getObject() instanceof MenuBar && pmd.getPath().equals(FRONT_MENU_BAR_PATH)) {
				
				if(pmd.getId().equals(FRONT_MENU_BAR)) {
					installFrontDefaultMenu((MenuBar)obj.getObject());
				}
				else
				if(pmd.getId().equals(FRONT_FOOTER_MENU_BAR)) {
					installFrontFooterDefaultMenu((MenuBar)obj.getObject());
				}
				else
				if(pmd.getId().equals(FRONT_FOOTER2_MENU_BAR)) {
					installFrontFooter2DefaultMenu((MenuBar)obj.getObject());
				}
				
			}
			
		}
	
	}
	
}
