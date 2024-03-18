package com.medicaredevelopers.web.abclabs.util;

import java.util.HashMap;

//EmailTemplate interface
public interface EmailTemplate {
 String generateTemplate(String recipientName, HashMap<String, String> additionalInfo);
}
