package br.com.uoutec.community.ediacaran.test;

import br.com.uoutec.community.ediacaran.front.pub.Menu;
import br.com.uoutec.community.ediacaran.front.pub.MenuBar;
import br.com.uoutec.community.ediacaran.system.repository.ObjectMetadata;
import br.com.uoutec.community.ediacaran.system.repository.ObjectValue;
import br.com.uoutec.community.ediacaran.system.repository.PathMetadata;
import br.com.uoutec.community.ediacaran.system.repository.ObjectsManagerDriver.ObjectsManagerDriverListener;

public class DefaultAdminMenuListener  
	implements ObjectsManagerDriverListener {

	private static final String ADMIN_MENU_BAR_PATH     = "/admin";
	
	private static final String ADMIN_MENU_BAR          = "adminmenubar";
	
	private static final String ADMIN_TOP_MENU_BAR      = "admintopmenubar";
	
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
	
}
