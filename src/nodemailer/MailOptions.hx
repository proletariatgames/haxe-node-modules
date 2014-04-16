package nodemailer;

typedef MailOptions = {
  from : String,
  to : String,
  subject : String,
  text : String,
  html : String,
  attachments : Dynamic
}
