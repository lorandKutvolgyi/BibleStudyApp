package com.lory.biblereader.i18n;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.internal.util.reflection.Whitebox;

public class MessageServiceTest {

	private MessageService underTest;

	@Mock
	private Messages messages;

	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
		underTest = new MessageService();
		Whitebox.setInternalState(underTest, "messages", messages);
	}

	@Test
	public void testGetMessageWhenMessageKeyExistsShouldReturnTheMessage() {
		messages.Eph = "Efezus";
		assertEquals("Efezus", underTest.getMessage("Eph"));
	}

	@Test(expected = IllegalArgumentException.class)
	public void testGetMessageWhenMessageKeyDoesNotExistShouldThrowException() {
		underTest.getMessage("NONEXISTENT");
	}
}
