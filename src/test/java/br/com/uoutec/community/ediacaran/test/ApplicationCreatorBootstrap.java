package br.com.uoutec.community.ediacaran.test;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Map;

import br.com.uoutec.application.se.ApplicationBootstrapProxy;
import br.com.uoutec.application.se.StartParamsParser;
import br.com.uoutec.ediacaran.core.EdiacaranBootstrap;
import br.com.uoutec.ediacaran.core.VarParser;
import br.com.uoutec.ediacaran.core.plugins.BuilderClassLoaderFactory;
import br.com.uoutec.ediacaran.core.plugins.PluginParserException;
import br.com.uoutec.ediacaran.core.plugins.PluginsLoader;
import br.com.uoutec.ediacaran.weld.ApplicationCreator;

public class ApplicationCreatorBootstrap {
	
	public static void main(String[] s) throws IOException, URISyntaxException, PluginParserException {
		
		StartParamsParser parser   = new StartParamsParser();
		
		Map<String, Object> params = parser.getParameters(new String[] {
				"--app=config/ediacaran-config.xml",
				"--default=config/ediacaran-dev.properties",
				"--logger=config/log4j.configuration"
		});
		
		ApplicationBootstrapProxy applicationBootstrap  = 
				new ApplicationBootstrapProxy("app");

        applicationBootstrap.loadApplication(params);
		
        EdiacaranBootstrap eb = (EdiacaranBootstrap)applicationBootstrap.getApplicationBootstrap();
        
        ApplicationCreator appCreator = new ApplicationCreator();
        BuilderClassLoaderFactory bclf = (BuilderClassLoaderFactory) eb.getPluginClassLoaderFactory();
        PluginsLoader pl = eb.getPluginsLoader();
        VarParser vp = eb.getVarParser();
        
        appCreator.setAppBase(new File(System.getProperty("app.base")) );
        appCreator.setDestBase(new File("c:/ediacaran"));
        appCreator.setLibClassPath(bclf.getLibClassPath());
        appCreator.setPluginsClassPath(bclf.getPluginsClassPath());
        appCreator.setPluginsLoader(pl);
        appCreator.setVarParser(vp);
        appCreator.createApplication();
	}

	
}
