package com.medicaredevelopers.web.abclabs.util;

import java.util.HashMap;

//WelcomeEmailTemplate
public class WelcomeEmailTemplate implements EmailTemplate {
@Override
public String generateTemplate(String recipientName, HashMap<String, String> additionalInfo) {
   return String.format("<!DOCTYPE html>\n"
   		+ "<html lang=\"en\">\n"
   		+ "<head>\n"
   		+ "    <meta charset=\"UTF-8\">\n"
   		+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
   		+ "    <title>ABC Laboratories - Patient Registration Successful</title>\n"
   		+ "    <style>\n"
   		+ "        /* Add your custom styles here */\n"
   		+ "        body {\n"
   		+ "            font-family: Arial, sans-serif;\n"
   		+ "            background-color: #f5f5f5;\n"
   		+ "            margin: 0;\n"
   		+ "            padding: 0;\n"
   		+ "        }\n"
   		+ "        .container {\n"
   		+ "            max-width: 600px;\n"
   		+ "            margin: 30px auto;\n"
   		+ "            padding: 20px;\n"
   		+ "            background-color: #ffffff;\n"
   		+ "            border-radius: 8px;\n"
   		+ "            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\n"
   		+ "        }\n"
   		+ "        h1 {\n"
   		+ "            color: #3498db;\n"
   		+ "        }\n"
   		+ "        p {\n"
   		+ "            line-height: 1.6;\n"
   		+ "        }\n"
   		+ "        .footer {\n"
   		+ "            margin-top: 20px;\n"
   		+ "            text-align: center;\n"
   		+ "            color: #777777;\n"
   		+ "        }\n"
   		+ "    </style>\n"
   		+ "</head>\n"
   		+ "<body>\n"
   		+ "    <div class=\"container\">\n"
   		+ "        <h1>ABC Laboratories - Patient Registration Successful</h1>\n"
   		+ "        <p>Dear " + recipientName + ",</p>\n"
   		+ "        <p>Congratulations! We are pleased to inform you that your registration at ABC Laboratories was successful. You are now part of our valued community of patients.</p>\n"
   		+ "        <p>Your Patient ID is: <strong>" + additionalInfo.get("id") + "</strong></p>\n"
   		+ "        <p>Please keep this ID secure, as you will need it for any future interactions with our laboratory services.</p>\n"
   		+ "        <p>If you have any questions or need further assistance, feel free to contact our customer support.</p>\n"
   		+ "        <div class=\"footer\">\n"
   		+ "            <p>Thank you for choosing ABC Laboratories.</p>\n"
   		+ "            <p>Best regards,<br>ABC Laboratories Team</p>\n"
   		+ "        </div>\n"
   		+ "    </div>\n"
   		+ "</body>\n" + "</html>\n" + "");
	}
}
