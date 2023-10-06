package com.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
public class ExampleTest {

	@Test
	public void testBoolean(){
		boolean flag = true;
		
		assertEquals(flag,true);
	}
	
	
	@Test
	public void testString(){
		String flag = "true";
		
		assertEquals(flag,"true");
	}
	
}
