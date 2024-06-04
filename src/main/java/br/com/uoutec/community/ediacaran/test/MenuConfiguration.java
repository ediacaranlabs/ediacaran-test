package br.com.uoutec.community.ediacaran.test;

import br.com.uoutec.community.ediacaran.front.objects.MenubarObjectsManagerDriver;
import br.com.uoutec.community.ediacaran.system.repository.ObjectsManagerDriver;
import br.com.uoutec.community.ediacaran.system.repository.ObjectsTemplateManager;
import br.com.uoutec.ediacaran.core.plugins.EntityContextPlugin;

public class MenuConfiguration {

	private DefaultAdminMenuListener defaultAdminMenuListener;
	
	private DefaultFrontMenuListener defaultFrontMenuListener;
	
	private ObjectsManagerDriver menubarDriver;
	
	public void apply() {
		
		//register admin menu listener
		getMenubarDriver().addListener(getDefaultAdminMenuListener());
		
		//register front menu listener
		getMenubarDriver().addListener(getDefaultFrontMenuListener());
		
	}
	
	private DefaultAdminMenuListener getDefaultAdminMenuListener() {
		
		if(defaultAdminMenuListener == null) {
			defaultAdminMenuListener = new DefaultAdminMenuListener();
		}
		
		return defaultAdminMenuListener;
	}

	private DefaultFrontMenuListener getDefaultFrontMenuListener() {
		
		if(defaultFrontMenuListener == null) {
			defaultFrontMenuListener = new DefaultFrontMenuListener();
		}
		
		return defaultFrontMenuListener;
	}
	
	private ObjectsManagerDriver getMenubarDriver() {
		
		if(menubarDriver == null) {
			ObjectsTemplateManager objectsManager = EntityContextPlugin.getEntity(ObjectsTemplateManager.class);
			menubarDriver = objectsManager.getDriver(MenubarObjectsManagerDriver.DRIVER_NAME);
		}
		
		return menubarDriver;
	}
	
	public void destroy() {
		
		//unregister admin menu listener
		getMenubarDriver().removeListener(getDefaultAdminMenuListener());
		
		//unregister front menu listener
		getMenubarDriver().removeListener(getDefaultFrontMenuListener());
		
	}
	
}
