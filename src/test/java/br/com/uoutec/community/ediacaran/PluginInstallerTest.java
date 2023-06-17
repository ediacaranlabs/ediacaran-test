package br.com.uoutec.community.ediacaran;

import org.junit.Test;
import org.junit.runner.RunWith;

import br.com.uoutec.community.ediacaran.plugins.PluginType;
import br.com.uoutec.community.ediacaran.test.ApplicationConfigParameterTest;
import br.com.uoutec.community.ediacaran.test.ApplicationConfigParametersTest;
import br.com.uoutec.community.ediacaran.test.ApplicationConfigTest;
import br.com.uoutec.community.ediacaran.test.EdiacaranTestRunner;
import br.com.uoutec.community.ediacaran.test.PluginContext;
import junit.framework.Assert;

@RunWith(EdiacaranTestRunner.class)
@ApplicationConfigTest("ediacaran/config/ediacaran-config.xml")
@ApplicationConfigParametersTest({
	@ApplicationConfigParameterTest(paramName="default", paramValue="classpath:META-INF/ediacaran-test.properties"),
	@ApplicationConfigParameterTest(paramName="logger", paramValue="classpath:META-INF/log4j.configuration"),
	@ApplicationConfigParameterTest(paramName="path", paramValue="ediacaran")
})
public class PluginInstallerTest {

	@Test
	@PluginContext("plugin-name")
	public void test(PluginType pluginType) {
		Assert.assertEquals("My plugin", pluginType.getConfiguration().getString("property"));
	}
	
}
