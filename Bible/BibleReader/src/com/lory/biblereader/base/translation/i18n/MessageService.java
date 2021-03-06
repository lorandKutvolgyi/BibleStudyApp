package com.lory.biblereader.base.translation.i18n;

import java.lang.reflect.Field;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.core.services.nls.Translation;

@Singleton
@Creatable
public final class MessageService {

	private Messages messages;

	@Inject
	public MessageService(@Translation Messages messages) {
		this.messages = messages;
	}

	public String getMessage(String messageKey) {
		try {
			Field field = Messages.class.getField(messageKey);
			return (String) field.get(messages);
		} catch (NoSuchFieldException | IllegalAccessException e) {
			throw new IllegalArgumentException(messageKey);
		}
	}
}
