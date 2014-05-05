package newrelic;

import js.Node;

class NewRelic {

  public static var instance(get_instance, never) : NewRelic;
  static var m_instance:NewRelic;
  var m_newrelic(default, null):Dynamic;

  function new() {
    if (untyped(process.env.NEW_RELIC_LICENSE_KEY != null)) {
      m_newrelic = Node.require("newrelic");
    }
  }

  inline static function get_instance() : NewRelic {
    if (m_instance == null) m_instance = new NewRelic();
    return m_instance;
  }

  public function setup() : Void {
  }

  public inline function setControllerName(name:String) : Void {
    if (m_newrelic) {
      m_newrelic.setControllerName(name);
    }
  }

  public inline function addCustomParameter(name:String, value:Dynamic) : Void {
    if (m_newrelic) {
      m_newrelic.addCustomParameter(name, value);
    }
  }
}
