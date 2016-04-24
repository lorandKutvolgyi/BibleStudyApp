package com.lory.biblereader.perspective.i18n;

import java.lang.reflect.Field;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.core.services.nls.Translation;

/**
 * Service class for com.lory.biblereader.perspective.i18n messages. This is not intended to subclass
 * it.
 *
 * @author lorandKutvolgyi
 *
 */
@Singleton
@Creatable
public final class MessageService {
    @Inject
    @Translation
    private Messages messages;

    /**
     * Provides the message String which relates to parameter messageKey.
     *
     * @param messages the Messages object
     * @param messageKey the key of the needed message
     * @return the message String
     */
    public String getMessage(String messageKey) {
        try {
            Field field = Messages.class.getField(messageKey);
            return (String) field.get(messages);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new IllegalArgumentException(messageKey);
        }
    }
}
