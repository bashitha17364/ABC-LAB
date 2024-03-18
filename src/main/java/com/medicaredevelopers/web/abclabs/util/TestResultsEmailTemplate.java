package com.medicaredevelopers.web.abclabs.util;

import java.util.HashMap;

//ReportResultsEmailTemplate
public class TestResultsEmailTemplate implements EmailTemplate {
@Override
public String generateTemplate(String recipientName, HashMap<String, String> additionalInfo) {
   return String.format("Dear %s,\nAttached is your invoice. %s\nRegards,\nThe Finance Team", recipientName, additionalInfo);
}
}
