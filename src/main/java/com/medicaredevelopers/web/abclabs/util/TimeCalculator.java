package com.medicaredevelopers.web.abclabs.util;


import java.sql.Time;
import java.util.Calendar;

public class TimeCalculator {
    private static TimeCalculator instance;

    // Private constructor to prevent instantiation
    private TimeCalculator() {
    }

    // Method to get the singleton instance
    public static TimeCalculator getInstance() {
        if (instance == null) {
            instance = new TimeCalculator();
        }
        return instance;
    }

    // Method to add minutes to a given time
    public Time addMinutesToTime(Time initialTime, int minutesToAdd) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(initialTime);
        calendar.add(Calendar.MINUTE, minutesToAdd);

        return new Time(calendar.getTimeInMillis());
    }
}

