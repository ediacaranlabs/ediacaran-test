package br.com.uoutec.community.ediacaran.test;

import br.com.uoutec.ediacaran.core.AbstractPlugin;

public class PluginInstaller 
	extends AbstractPlugin{

	private RootContextConfiguration rootContextConfiguration;

	private MenuConfiguration menuConfiguration;
	
	private I18nConfiguration i18nConfiguration;
	
	private SecurityWebConfiguration securityWebConfig;
	
	private WidgetsConfiguration widgetsConfiguration;
	
	public PluginInstaller() {
		this.rootContextConfiguration = new RootContextConfiguration();
		this.menuConfiguration = new MenuConfiguration();
		this.i18nConfiguration = new I18nConfiguration();
		this.securityWebConfig = new SecurityWebConfiguration();
		this.widgetsConfiguration = new WidgetsConfiguration();
	}
	
	@Override
	public void install() throws Throwable {
		rootContextConfiguration.apply();
		menuConfiguration.apply();
		widgetsConfiguration.apply();
		securityWebConfig.apply();
		i18nConfiguration.apply();
	}

	@Override
	public void uninstall() throws Throwable {
		i18nConfiguration.destroy();
		menuConfiguration.destroy();
		widgetsConfiguration.destroy();
		securityWebConfig.destroy();
		rootContextConfiguration.destroy();
	}

}
