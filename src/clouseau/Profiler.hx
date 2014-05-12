package clouseau;

typedef Profiler = {
  public var enabled:Bool;
  public function init(?options:Dynamic) : Void;
  public function enter(name:String) : Void;
  public function exit() : Void;
  public function getFormattedData() : String;
};
