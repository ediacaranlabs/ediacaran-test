package br.com.uoutec.community.ediacaran.test;

import br.com.uoutec.community.ediacaran.front.pub.widget.Widget;
import br.com.uoutec.community.ediacaran.front.pub.widget.WidgetException;
import br.com.uoutec.community.ediacaran.front.pub.widget.Widgets;
import br.com.uoutec.ediacaran.core.plugins.EntityContextPlugin;

public class WidgetsConfiguration {

	private Widgets widgets;
	
	public void apply() throws WidgetException {
		getWidgets().addWidget(Widget.builder().withName("w1").withResource("/admin/widgets/w1.jsp").withOrder(100).build());
		getWidgets().addWidget(Widget.builder().withName("w2").withResource("/admin/widgets/w2.jsp").withOrder(100).build());
	}
	
	private Widgets getWidgets() {
		if(widgets == null) {
			widgets = EntityContextPlugin.getEntity(Widgets.class);
		}
		return widgets;
	}
	
	public void destroy() throws WidgetException {
		getWidgets().removeWidget("w2");
		getWidgets().removeWidget("w1");
	}
	
}
