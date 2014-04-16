package nodemailer;

class Transports {
  public static inline var SMTPTransport = "SMTP";
  public static inline var SESTransport = "SES";
  public static inline var SendmailTransport = "SENDMAIL";
  public static inline var StubTransport = "STUB";
  public static inline var DirectTransport = "DIRECT";
  public static inline var PickupTransport = "PICKUP";
}

typedef Transport = {
  function sendMail(options:MailOptions, fn:String -> Void) : Void;
}
