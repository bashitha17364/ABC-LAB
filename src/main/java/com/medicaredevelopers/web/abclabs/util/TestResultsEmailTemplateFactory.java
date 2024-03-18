package com.medicaredevelopers.web.abclabs.util;

//InvoiceEmailTemplateFactory
public class TestResultsEmailTemplateFactory implements EmailTemplateFactory {
@Override
public EmailTemplate createEmailTemplate() {
   return new TestResultsEmailTemplate();
}
}


