package br.com.uoutec.community.ediacaran.test;

import br.com.uoutec.application.SystemProperties;
import br.com.uoutec.application.security.FileSecurityPermissionActions;
import br.com.uoutec.community.ediacaran.front.page.PagesObjectsManagerDriver;
import br.com.uoutec.community.ediacaran.system.repository.ObjectsTemplateManager;
import br.com.uoutec.ediacaran.AbstractWebServerBootstrap;
import br.com.uoutec.ediacaran.core.SecurityPolicyUpdater;
import br.com.uoutec.ediacaran.core.plugins.EntityContextPlugin;
import br.com.uoutec.ediacaran.core.plugins.PluginType;
import br.com.uoutec.ediacaran.core.security.PermissionType;
import br.com.uoutec.ediacaran.core.security.SecurityPermissionRequest;
import br.com.uoutec.ediacaran.web.tomcat.TomcatUtils;

public class RootContextConfiguration {

	private String publicPath;
	
	private PluginType pluginType;
	
	private SecurityPolicyUpdater securityPolicyUpdater;
	
	private ObjectsTemplateManager objectsManager;
	
	public void apply() {

		//update root reference
		SystemProperties.setProperty("app.web", getPublicPath());
		
		//grant permission to front plugin to access the public path
		getSecurityPolicyUpdater().grantPermissions(
				"front", 
				new SecurityPermissionRequest(PermissionType.FILE, publicPath + "/-", FileSecurityPermissionActions.ALL.name().toLowerCase())
		);
		
		//update the page repository
		PagesObjectsManagerDriver pageObjectDriver = new PagesObjectsManagerDriver();
		PagesObjectsManagerDriver oldPageObjectDriver = (PagesObjectsManagerDriver) getObjectsManager().getDriver(pageObjectDriver.getName());
		
		if(oldPageObjectDriver != null) {
			oldPageObjectDriver.getTemplatesIdMap().values().stream()
				.forEach((e)->pageObjectDriver.registerTemplate(e));
		}
		
		getObjectsManager().registerDriver(pageObjectDriver);
		
	}
	
	private ObjectsTemplateManager getObjectsManager() {
	
		if(objectsManager == null) {
			objectsManager = EntityContextPlugin.getEntity(ObjectsTemplateManager.class);
		}
		
		return objectsManager;
	}
	
	private SecurityPolicyUpdater getSecurityPolicyUpdater() {
	
		if(securityPolicyUpdater == null) {
			securityPolicyUpdater = EntityContextPlugin.getEntity(SecurityPolicyUpdater.class);
		}
		
		return securityPolicyUpdater;
	}
	
	private PluginType getPluginType() {
	
		if(pluginType == null) {
			pluginType = EntityContextPlugin.getEntity(PluginType.class);
		}
		
		return pluginType;
	}
	
	private String getPublicPath() {
		
		if(publicPath == null) {
			publicPath = TomcatUtils.getPublicPath(getPluginType().getConfiguration().getMetadata()).getAbsolutePath().getFullName();
		}
		
		return publicPath;
	}
	
	public void destroy() {
		//restore root reference
		SystemProperties.setProperty("app.web", SystemProperties.getProperty("app.base") + AbstractWebServerBootstrap.WEBAPP_PATH);

		//revoke front permission
		getSecurityPolicyUpdater().revokePermission(
				"front", 
				new SecurityPermissionRequest(PermissionType.FILE, publicPath + "/-", FileSecurityPermissionActions.ALL.name().toLowerCase())
		);
		
		//restore the page repository
		PagesObjectsManagerDriver pageObjectDriver = new PagesObjectsManagerDriver();
		PagesObjectsManagerDriver oldPageObjectDriver = (PagesObjectsManagerDriver) getObjectsManager().getDriver(pageObjectDriver.getName());
		
		if(oldPageObjectDriver != null) {
			oldPageObjectDriver.getTemplatesIdMap().values().stream()
				.forEach((e)->pageObjectDriver.registerTemplate(e));
		}
		
		getObjectsManager().registerDriver(pageObjectDriver);
		
	}
	
}
