package com.lory.biblereader.parts.common;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.workbench.modeling.EModelService;

@Creatable
@Singleton
public class EclipseSpecificUtil {

	@Inject
	private static EModelService modelService;

	@Inject
	private static MApplication application;

	public static EModelService getModelService() {
		return modelService;
	}

	public static MApplication getApplication() {
		return application;
	}

}
