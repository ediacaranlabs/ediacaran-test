package br.com.uoutec.community.ediacaran.test;

import br.com.uoutec.community.ediacaran.front.security.pub.AuthenticationMethodBuilder;
import br.com.uoutec.community.ediacaran.front.security.pub.WebSecurityManagerPlugin;
import br.com.uoutec.community.ediacaran.security.SecurityRegistryException;
import br.com.uoutec.ediacaran.core.plugins.EntityContextPlugin;

public class SecurityWebConfiguration {

	private WebSecurityManagerPlugin webSecurityManagerPlugin;
	
	public void apply() throws SecurityRegistryException {
		
		getWebSecurityManagerPlugin()
			.addConstraint("/admin/manager/*")
				.addRole("manager")
				.addRole("user")
			.addConstraint("/admin/*")
				.addRole("user")
			.form()
				.setOption(AuthenticationMethodBuilder.LOGIN_PAGE, "/login")
				.setOption(AuthenticationMethodBuilder.ERROR_PAGE, "/login?error=true");		
	}
	
	private WebSecurityManagerPlugin getWebSecurityManagerPlugin() {
		if(webSecurityManagerPlugin == null) {
			webSecurityManagerPlugin = 
					EntityContextPlugin.getEntity(WebSecurityManagerPlugin.class);
		}
		
		return webSecurityManagerPlugin;
	}
	public void destroy() {
	}
	
}
