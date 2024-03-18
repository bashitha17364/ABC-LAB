package com.medicaredevelopers.web.abclabs.util;

//ConfirmationEmailTemplateFactory
public class AppointmentConfirmationEmailTemplateFactory implements EmailTemplateFactory {
@Override
public EmailTemplate createEmailTemplate() {
   return new AppointmentConfirmationEmailTemplate();
}
}
