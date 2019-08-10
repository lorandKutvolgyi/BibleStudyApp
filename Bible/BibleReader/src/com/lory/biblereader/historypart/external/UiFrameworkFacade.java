package com.lory.biblereader.historypart.external;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.workbench.modeling.EModelService;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.e4.ui.workbench.modeling.EPartService.PartState;

import com.lory.biblereader.textpart.TextPartManager;

@Creatable
@Singleton
public class UiFrameworkFacade {

	private TextPartManager textPartManager;
	private EPartService partService;
	private EModelService modelService;
	private MApplication application;

	@Inject
	public UiFrameworkFacade(TextPartManager textPartManager, EPartService partService, EModelService modelService,
			MApplication application) {
		this.textPartManager = textPartManager;
		this.partService = partService;
		this.modelService = modelService;
		this.application = application;
	}

	public void showNewView() {
		partService.showPart(textPartManager.createNewTextPart(modelService, application), PartState.ACTIVATE);
	}
}
