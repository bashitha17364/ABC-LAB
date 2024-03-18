package com.medicaredevelopers.web.abclabs.util;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Time;

import org.junit.jupiter.api.Test;

class TimeCalculatorTest {

	@Test
	void test() {
		TimeCalculator timeCalculator=TimeCalculator.getInstance();
				
		Time time=timeCalculator.addMinutesToTime(Time.valueOf("09:00:00"),10);
			
		Time timeMustBe=Time.valueOf("09:10:00");
		
		assertEquals(timeMustBe, time);
	}

}
