package webpurify;

@:keep
extern class WebPurify {

  public function check(string:String, callback:String->String->Void) : Void;
  public function checkCount(string:String, callback:String->Int->Void) : Void;
  public function replace(string:String, replacement:String, callback:String->String->Void) : Void;

  // FIXME return is a reserved word in Haxe
  //public function return(string:String, callback:String->Array<String>->Void);

  public function addToBlacklist(string:String, callback:String->Bool->Void) : Void;
  public function removeFromBlacklist(string:String, callback:String->Bool->Void) : Void;
  public function getBlacklist(callback:String->Array<String>->Void) : Void;

  public function addToWhitelist(string:String, callback:String->Bool->Void) : Void;
  public function removeFromWhitelist(string:String, callback:String->Bool->Void) : Void;
  public function getWhitelist(callback:String->Array<String>->Void) : Void;
}
