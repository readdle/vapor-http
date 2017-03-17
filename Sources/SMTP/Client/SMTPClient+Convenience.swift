import Transport

extension SMTPClient {
    /*
         https://sendgrid.com/

         Credentials:
         https://app.sendgrid.com/settings/credentials
    */
    public static func makeSendGridClient() throws -> SMTPClient {
        return try SMTPClient(scheme: "smtps", hostname: "smtp.sendgrid.net", port: 465)
    }

    /*
         https://www.digitalocean.com/community/tutorials/how-to-use-google-s-smtp-server

         Credentials:
         user: Your full Gmail or Google Apps email address (e.g. example@gmail.com or example@yourdomain.com)
         pass: Your Gmail or Google Apps email password
    */
    public static func makeGmailClient() throws -> SMTPClient {
        return try SMTPClient(scheme: "smtps", hostname: "smtp.gmail.com", port: 465)
    }
    
    /*
     https://mailgun.com/
     
     Credentials:
     https://mailgun.com/app/domains
     */
    public static func makeMailgunClient() throws -> SMTPClient {
        return try SMTPClient(scheme: "smtps", hostname: "smtp.mailgun.org", port: 465)
    }
}
