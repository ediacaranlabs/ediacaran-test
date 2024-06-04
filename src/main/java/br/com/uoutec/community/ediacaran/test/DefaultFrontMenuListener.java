package br.com.uoutec.community.ediacaran.test;

import br.com.uoutec.community.ediacaran.front.pub.Menu;
import br.com.uoutec.community.ediacaran.front.pub.MenuBar;
import br.com.uoutec.community.ediacaran.system.repository.ObjectMetadata;
import br.com.uoutec.community.ediacaran.system.repository.ObjectValue;
import br.com.uoutec.community.ediacaran.system.repository.PathMetadata;
import br.com.uoutec.community.ediacaran.system.repository.ObjectsManagerDriver.ObjectsManagerDriverListener;

public class DefaultFrontMenuListener 
	implements ObjectsManagerDriverListener {

	private static final String FRONT_MENU_BAR_PATH     = "/front";

	private static final String FRONT_MENU_BAR          = "default";

	private static final String FRONT_FOOTER_MENU_BAR   = "footer_menu";
	
	private static final String FRONT_FOOTER2_MENU_BAR  = "footer_menu2";
	
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
	
}
