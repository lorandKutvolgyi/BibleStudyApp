package com.lory.i18n;

import java.lang.reflect.Field;

/**
 * Service class for com.lory.i18n messages. This is not intended to subclass
 * it.
 *
 * @author lorandKutvolgyi
 *
 */
public final class MessageService {

    private MessageService() {}

    /**
     * Provides the message String which relates to parameter messageKey.
     *
     * @param messages the Messages object
     * @param messageKey the key of the needed message
     * @return the message String
     */
    public static String getMessage(Messages messages, String messageKey) {
        try {
            Field field = Messages.class.getField(messageKey);
            return (String) field.get(messages);
        } catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
            throw new IllegalArgumentException(messageKey);
        }
    }

    @Override
    public String toString() {
        return "MessageService";
    }

}
