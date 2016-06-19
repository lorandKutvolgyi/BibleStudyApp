package com.lory.biblereader.i18n;

import static org.junit.Assert.assertEquals;

import org.eclipse.swt.widgets.Display;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.internal.util.reflection.Whitebox;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

/**
 * Unit test for {@link MessageService}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({ Display.class })
public class MessageServiceTest {
    private MessageService underTest;
    @Mock
    private Messages messages;

    @Before
    public void setUp() {
        System.out.println("MessageServiceTest " + Thread.currentThread().getContextClassLoader());
        MockitoAnnotations.initMocks(this);
        underTest = new MessageService();
        Whitebox.setInternalState(underTest, "messages", messages);
    }

    @Test
    public void testGetMessageWhenMessageKeyExistsShouldReturnTheMessage() {
        messages.EPHESIANS = "Efezus";
        assertEquals("Efezus", underTest.getMessage("EPHESIANS"));
    }

    @Test(expected = IllegalArgumentException.class)
    public void testGetMessageWhenMessageKeyDoesNotExistShouldThrowException() {
        underTest.getMessage("NONEXISTENT");
    }
}
