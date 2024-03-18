package com.medicaredevelopers.web.abclabs.util;

import java.util.HashMap;

//AppointmentConfirmationEmailTemplate
public class AppointmentConfirmationEmailTemplate implements EmailTemplate {
@Override
public String generateTemplate(String recipientName, HashMap<String, String> additionalInfo) {
   return String.format("<!DOCTYPE html>\n"
   		+ "<html lang=\"en\">\n"
   		+ "<head>\n"
   		+ "    <meta charset=\"UTF-8\">\n"
   		+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
   		+ "    <title>ABC Laboratories - Appointment Confirmation</title>\n"
   		+ "    <style>\n"
   		+ "        body {\n"
   		+ "            font-family: 'Arial', sans-serif;\n"
   		+ "            background-color: #f4f4f4;\n"
   		+ "            margin: 0;\n"
   		+ "            padding: 0;\n"
   		+ "        }\n"
   		+ "        .container {\n"
   		+ "            max-width: 600px;\n"
   		+ "            margin: 20px auto;\n"
   		+ "            padding: 20px;\n"
   		+ "            background-color: #ffffff;\n"
   		+ "            border-radius: 8px;\n"
   		+ "            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n"
   		+ "        }\n"
   		+ "        h1 {\n"
   		+ "            color: #007BFF;\n"
   		+ "        }\n"
   		+ "        p {\n"
   		+ "            line-height: 1.6;\n"
   		+ "        }\n"
   		+ "    </style>\n"
   		+ "</head>\n"
   		+ "<body>\n"
   		+ "    <div class=\"container\">\n"
   		+ "        <h1>ABC Laboratories - Appointment Confirmation</h1>\n"
   		+ "        <p>Dear "+recipientName+",</p>\n"
   		+ "        <p>Your appointment with ABC Laboratories has been successfully reserved.</p>\n"
   		+ "        <p>Appointment Details:</p>\n"
   		+ "        <ul>\n"
   		+ "            <li><strong>Appointment ID:</strong> "+additionalInfo.get("id")+"</li>\n"
   		+ "            <li><strong>Appointment Date and Time:</strong> "+additionalInfo.get("date")+" "+additionalInfo.get("time")+"</li>\n"
   		+ "            <li><strong>Test Type:</strong> "+additionalInfo.get("type")+"</li>\n"
   		+ "            <li><strong>Branch:</strong> "+additionalInfo.get("branch")+"</li>\n"
   		+ "        </ul>\n"
   		+ "        <p>Thank you for choosing ABC Laboratories. We look forward to providing you with quality healthcare services.</p>\n"
   		+ "        <p>If you have any questions or need further assistance, please contact us at info@abclaboratories.lk.</p>\n"
   		+ "        <p>Best regards,<br>ABC Laboratories Team</p>\n"
   		+ "    </div>\n"
   		+ "</body>\n"
   		+ "</html>\n"
   		+ "");
}
}
