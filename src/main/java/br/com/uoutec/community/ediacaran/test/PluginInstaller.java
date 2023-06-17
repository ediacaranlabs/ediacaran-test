package br.com.uoutec.community.ediacaran.test;

import br.com.uoutec.community.ediacaran.AbstractPlugin;
import br.com.uoutec.community.ediacaran.front.objects.MenubarObjectsManagerDriver;
import br.com.uoutec.community.ediacaran.front.objects.ObjectsManager.ObjectMetadata;
import br.com.uoutec.community.ediacaran.front.objects.ObjectsManager.ObjectValue;
import br.com.uoutec.community.ediacaran.front.objects.ObjectsManagerDriver.ObjectsManagerDriverListener;
import br.com.uoutec.community.ediacaran.front.objects.PathMetadata;
import br.com.uoutec.community.ediacaran.front.page.ObjectsTemplateManager;
import br.com.uoutec.community.ediacaran.front.pub.Menu;
import br.com.uoutec.community.ediacaran.front.pub.MenuBar;
import br.com.uoutec.community.ediacaran.front.pub.widget.Widget;
import br.com.uoutec.community.ediacaran.front.pub.widget.WidgetException;
import br.com.uoutec.community.ediacaran.front.pub.widget.Widgets;
import br.com.uoutec.community.ediacaran.front.security.pub.WebSecurityManagerPlugin;
import br.com.uoutec.community.ediacaran.plugins.EntityContextPlugin;
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
		installDefaultMenus();
		installWidgets();
		installSecurityConfig();
	}

	@Override
	public void uninstall() throws Throwable {
		uninstallDefaultMenus();
		uninstallWidget();
		uninstallSecurityConfig();
	}

	private void installDefaultMenus() {
		this.defaultAdminMenuListener = new DefaultAdminMenuListener();
		this.defaultFrontMenuListener = new DefaultFrontMenuListener();
		
		ObjectsTemplateManager objectsManager = EntityContextPlugin.getEntity(ObjectsTemplateManager.class);
		objectsManager.addListener(MenubarObjectsManagerDriver.DRIVER_NAME, this.defaultAdminMenuListener);
		objectsManager.addListener(MenubarObjectsManagerDriver.DRIVER_NAME, this.defaultFrontMenuListener);
	}

	private void installFrontDefaultMenu(MenuBar menubar) {
		
		Menu menu = menubar
			.addMenu("features")
				.setName("Features");
		
		menu
			.addItem("typography")
			.setName("Typography")
			.setResource("typography.jsp");
		
		menu
			.addItem("table")
			.setName("Table")
			.setResource("table.jsp");
		
		menu
			.addItem("components")
			.setName("Components")
			.setResource("components.jsp");

		menu
			.addItem("forms")
			.setName("Forms")
			.setResource("form.jsp");

		menu
			.addItem("flot")
			.setName("Flot Charts")
			.setResource("flot.jsp");

		menu = menubar
			.addMenu("pages")
				.setName("Pages");

		menu
			.addItem("pricing_box")
			.setName("Pricing Boxes")
			.setResource("pricingbox.jsp");

		menu
			.addItem("sidebar")
			.setName("Sidebar")
			.setResource("sidebar.jsp");

		menu = menubar
			.addMenu("contato")
				.setName("Contato")
				.setResource("mailto:contact@uoutec.com.br");
		
	}
	
	private void installFrontFooterDefaultMenu(MenuBar menubar) {
		
		menubar
			.addMenu("item1")
			.setName("Item 1")
			.setResource("#");
	
		menubar
			.addMenu("item2")
			.setName("Item 2")
			.setResource("#");
	
		menubar
			.addMenu("item3")
			.setName("Item 3")
			.setResource("#");
		
	}

	private void installFrontFooter2DefaultMenu(MenuBar menubar) {
		
		menubar
			.addMenu("item1")
			.setName("Item 1")
			.setResource("#")
			.addItem("item 1")
				.setName("Menu item 1")
				.setResource("#");

		menubar
			.addMenu("item2")
			.setName("Item 2")
			.setResource("#");

		menubar
			.addMenu("item3")
			.setName("Item 3")
			.setResource("#");
		
	}
	
	private void installAdminDefaultMenu(MenuBar leftMenu) {
		
		leftMenu.addMenu("components")
			.setName("Components")
			.setIcon("tree")
			.setResource("#!/plugins/ediacaran/front/admin/components.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("forms")
			.setName("Forms")
			.setIcon("edit")
			.setResource("#!/plugins/ediacaran/front/admin/form.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("typography")
			.setName("Typography")
			.setIcon("pencil")
			.setResource("#!/plugins/ediacaran/test/admin/typography.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("tables")
			.setName("Tables")
			.setIcon("table")
			.setResource("#!/plugins/ediacaran/test/admin/table.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("pricing_boxes")
			.setName("Pricing boxes")
			.setIcon("money")
			.setResource("#!/plugins/ediacaran/test/admin/pricingbox.jsp")
			.setOrder(1);
		
		leftMenu.addMenu("flot_charts")
			.setName("Flot Charts")
			.setIcon("pie-chart")
			.setResource("#!/plugins/ediacaran/test/admin/flotcharts.jsp")
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
		
		widgets.addWidget(new Widget("w1", "/plugins/ediacaran/test/admin/widgets/w1.jsp", 100));
		widgets.addWidget(new Widget("w2", "/plugins/ediacaran/test/admin/widgets/w2.jsp", 100));
		
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
			.form("/login", "/login?error=true");
		
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
		
		objectsManager.removeListener(MenubarObjectsManagerDriver.DRIVER_NAME, this.defaultAdminMenuListener);
		
		MenuBar leftMenu = (MenuBar) objectsManager.getObject(MenubarObjectsManagerDriver.DRIVER_NAME + ADMIN_MENU_BAR_PATH + "/" + ADMIN_MENU_BAR);
		MenuBar topMenu = (MenuBar) objectsManager.getObject(MenubarObjectsManagerDriver.DRIVER_NAME + ADMIN_MENU_BAR_PATH + "/" + ADMIN_TOP_MENU_BAR);
		uninstallDefaultMenu(leftMenu);
		uninstallDefaultTopMenu(topMenu);
		
		objectsManager.removeListener(MenubarObjectsManagerDriver.DRIVER_NAME, this.defaultFrontMenuListener);

		MenuBar frontTopMenu = (MenuBar) objectsManager.getObject(MenubarObjectsManagerDriver.DRIVER_NAME + FRONT_MENU_BAR_PATH + "/" + FRONT_MENU_BAR);
		MenuBar frontFooterMenu = (MenuBar) objectsManager.getObject(MenubarObjectsManagerDriver.DRIVER_NAME + FRONT_MENU_BAR_PATH + "/" + FRONT_FOOTER_MENU_BAR);
		MenuBar frontFooter2Menu = (MenuBar) objectsManager.getObject(MenubarObjectsManagerDriver.DRIVER_NAME + FRONT_MENU_BAR_PATH + "/" + FRONT_FOOTER2_MENU_BAR);
		
		uninstallFrontDefaultMenu(frontTopMenu);
		uninstallFrontFooterDefaultMenu(frontFooterMenu);
		uninstallFrontFooter2DefaultMenu(frontFooter2Menu);
		
	}
	
	private void uninstallDefaultMenu(MenuBar leftMenu) {
		
		leftMenu.removeMenu("components");
		leftMenu.removeMenu("forms");
		leftMenu.removeMenu("typography");
		leftMenu.removeMenu("tables");
		leftMenu.removeMenu("pricing_boxes");
		leftMenu.removeMenu("flot_charts");
		leftMenu.removeMenu("menu");
		
	}
	
	private void uninstallDefaultTopMenu(MenuBar topMenu) {
		
		topMenu.removeMenu("messages");
		topMenu.removeMenu("notification");
		topMenu.removeMenu("menu");
		
	}
	
	private void uninstallFrontDefaultMenu(MenuBar menubar) {
		
		menubar.removeMenu("features");
		menubar.removeMenu("pages");
		menubar.removeMenu("contato");
		
	}
	
	private void uninstallFrontFooterDefaultMenu(MenuBar menubar) {
		
		menubar.removeMenu("item1");
		menubar.removeMenu("item2");
		menubar.removeMenu("item3");
		
	}

	private void uninstallFrontFooter2DefaultMenu(MenuBar menubar) {
		
		menubar.removeMenu("item1");
		menubar.removeMenu("item2");
		menubar.removeMenu("item3");
		
	}	
	
	public class DefaultAdminMenuListener 
		implements ObjectsManagerDriverListener {

		public void afterLoad(ObjectMetadata omd, ObjectValue obj) {
			
			if(obj == null) {
				return;
			}

			PathMetadata pmd = omd.getPathMetadata();
			
			if(obj.getObject() instanceof MenuBar && pmd.getPath().equals("/admin")) {
				
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
	implements ObjectsManagerDriverListener		 {

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
