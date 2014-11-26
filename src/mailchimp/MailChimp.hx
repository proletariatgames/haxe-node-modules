package mailchimp;

import js.Node;

class MailChimp {

  public static var instance(get_instance, never) : MailChimp;
  static var m_instance:MailChimp;
  var m_mailchimp(default, null):Dynamic;

  function new() {
    if (untyped(process.env.MAILCHIMP_APIKEY != null)) {
      var mailchimpAPI = Node.require("mailchimp-api");
      m_mailchimp = untyped __js__('new mailchimpAPI.Mailchimp(process.env.MAILCHIMP_APIKEY, true)');
    }
  }

  inline static function get_instance() : MailChimp {
    if (m_instance == null) m_instance = new MailChimp();
    return m_instance;
  }

  public function setup() : Void {
  }

  public inline function listSubscribe(email:String, listID:String, onSuccess:String->Void, onFailure:String->Void) : Void {
    if (m_mailchimp) {
      var emailParam:Dynamic = {email: email};
      var params:Dynamic = {apikey: Node.process.env.MAILCHIMP_APIKEY,
                            id: listID,
                            email: emailParam};
        m_mailchimp.lists.subscribe(params, onSuccess, onFailure);
    }
  }

}
