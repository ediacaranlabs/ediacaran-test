package br.com.uoutec.community.ediacaran.test;

import java.io.IOException;
import java.net.URISyntaxException;

import br.com.uoutec.ediacaran.core.ApplicationStart;

public class ApplicationCreatorBootstrap {

	public static void main(String[] vars) throws IOException, URISyntaxException {
		/*
		System.setProperty("system.security.policy", "C:/ediacaran/config/security.json");
		System.setProperty("system.security", "true");
		System.setProperty("system.security.print", "true");
		System.setProperty("system.security.debug", "error");
		*/
		ApplicationStart.main(vars); 

	}
	
}
