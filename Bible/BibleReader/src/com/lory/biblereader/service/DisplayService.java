package com.lory.biblereader.service;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Monitor;

@Creatable
@Singleton
public class DisplayService {

	private Monitor[] monitors;

	public DisplayService() {
		monitors = Display.getCurrent().getMonitors();
	}

	public int getMonitorWidth(Composite composite) {
		return getActiveMonitor(composite).getBounds().width;
	}

	public int getMonitorHeight(Composite composite) {
		return getActiveMonitor(composite).getBounds().height;
	}

	private Monitor getActiveMonitor(Composite composite) {
		Rectangle r = composite.getBounds();
		for (Monitor monitor : monitors) {
			if (monitor.getBounds().intersects(r)) {
				return monitor;
			}
		}
		return null;
	}
}
