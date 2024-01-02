package br.com.uoutec.community.ediacaran.test;

import java.io.IOException;
import java.net.URISyntaxException;

import br.com.uoutec.ediacaran.core.ApplicationStart;

public class ApplicationCreatorBootstrap {
	

	public static void main(String[] vars) throws IOException, URISyntaxException {
		ApplicationStart.main(vars); 
	}
	
	/*
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
        
        appCreator.setAppBase(Vfs.getPath(SystemProperties.getProperty("app.base")) );
        appCreator.setDestBase(Vfs.getPath("c:/ediacaran"));
        appCreator.setLibClassPath(bclf.getLibClassPath());
        appCreator.setPluginsClassPath(bclf.getPluginsClassPath());
        appCreator.setPluginsLoader(pl);
        appCreator.setVarParser(vp);
        appCreator.createApplication();
	}
    */
	
}
