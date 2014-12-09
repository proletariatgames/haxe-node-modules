package nodemailer;

typedef Transport = {
  function sendMail(options:MailOptions, fn:String -> Void) : Void;
}
