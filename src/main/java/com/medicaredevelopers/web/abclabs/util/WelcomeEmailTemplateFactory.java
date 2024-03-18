package com.medicaredevelopers.web.abclabs.util;

//WelcomeEmailTemplateFactory
public class WelcomeEmailTemplateFactory implements EmailTemplateFactory {
@Override
public EmailTemplate createEmailTemplate() {
   return new WelcomeEmailTemplate();
}
}
