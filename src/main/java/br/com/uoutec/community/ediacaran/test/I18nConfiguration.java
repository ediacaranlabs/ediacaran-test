package br.com.uoutec.community.ediacaran.test;

import java.io.IOException;

import br.com.uoutec.community.ediacaran.system.i18n.Plugini18nManager;
import br.com.uoutec.ediacaran.core.plugins.EntityContextPlugin;

public class I18nConfiguration {

	private Plugini18nManager plugini18nManager;
	
	public void apply() throws IOException {
		getPlugini18nManager().registerLanguages();
	}

	private Plugini18nManager getPlugini18nManager() {
		
		if(plugini18nManager == null) {
			plugini18nManager = EntityContextPlugin.getEntity(Plugini18nManager.class);
		}
		
		return plugini18nManager;
	}

	public void destroy() {
		getPlugini18nManager().unregisterLanguages();
	}
	
}
