package com.lory.biblereader.parts.bottomrightstack.statisticspart;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Table;

public class StatisticsPart {

	@Inject
	public StatisticsPart() {

	}

	@PostConstruct
	public void postConstruct(Composite parent) {
		Table table = new Table(parent, SWT.NONE);
		table.setItemCount(12);
	}

}