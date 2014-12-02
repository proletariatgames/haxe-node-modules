package express;

import js.Node;

typedef MiddleWare = Request->Response->Dynamic->Void;

typedef Request = { > NodeHttpServerReq,
  var body : Dynamic;
  var query : Dynamic;
  var params : Dynamic;
  var session : Dynamic;

  // Passport
  var user : Dynamic;

  // IPs
  var ip : String;
  var ips : Array<String>;

  // Validator functions
  public function check(field:String, ?errorMsg:String) : Request;
  public function validate(field:String, ?errorMsg:String) : Request;
  public function assert(field:String, ?errorMsg:String) : Request;
  public function error (msg:String) : Request;
  public function isAfter(date:Dynamic) : Request;
  public function isBefore(date:Dynamic) : Request;
  public function isEmail() : Request;
  public function isCreditCard() : Request;
  public function isAuthenticated() : Bool;
  public function isUrl() : Request;
  public function isIPv4() : Request;
  public function isIPv6() : Request;
  public function isIP() : Request;
  public function isAlpha() : Request;
  public function isAlphanumeric() : Request;
  public function isNumeric() : Request;
  public function isHexadecimal() : Request;
  public function isHexColor() : Request;
  public function isLowercase() : Request;
  public function isUppercase() : Request;
  public function isInt() : Request;
  public function isDecimal() : Request;
  public function isDivisibleBy(n:Int) : Request;
  public function isFloat() : Request;
  public function notNull() : Request;
  public function isNull() : Request;
  public function notEmpty() : Request;
  public function equals(equals:Dynamic) : Request;
  public function contains(str:String) : Request;
  public function notContains(str:String) : Request;
  public function regex(pattern:String, modifiers:String) : Request;
  public function is(pattern:String, modifiers:String) : Request;
  public function notRegex(pattern:String, modifiers:String) : Request;
  public function not(pattern:String, modifiers:String) : Request;
  public function len(min:Int, max:Int) : Request;
  @:overload(function(version:String) : Void {})
  public function isUUID(version:Int) : Request;
  public function isUUIDv3() : Request;
  public function isUUIDv4() : Request;
  public function isDate() : Request;
  public function isIn(options:Dynamic) : Request;
  public function notIn(options:Dynamic) : Request;
  public function min(val:Int) : Request;
  public function max(val:Int) : Request;
  public function get(header:String) : Dynamic;

  public function sanitize() : Request;
  public function filter() : Request;
  public function validationErrors(?mapped:Bool) : Array<Dynamic>;
  public function pipe(dest:NodeWriteStream,?opts:{end:Bool}):Void;

  public function accepts(type:Dynamic) : Dynamic;
  public function acceptsEncoding(encoding:Dynamic) : Bool;
  public function acceptsCharset(charset:Dynamic) : Bool;
  public function acceptsLanguage(lang:Dynamic) : Bool;
}

typedef Response = { > NodeHttpServerResp,
  function status(code : Int) : Response;
  @:overload(function (multiple : Dynamic) : Void {})
  function set(header : String, value : Dynamic) : Void;
  function get(field : String) : Void;
  function cookie(name : String, value : Dynamic, ?options : Dynamic) : Void;
  function clearCookie(name : String, ?options : Dynamic) : Void;
  function redirect(?code : Int, url : String) : Void;
  function location(url : String) : Void;
  function send(?value : Dynamic) : Void;
  function json(?value : Dynamic) : Void;
  function jsonp(?value : Dynamic) : Void;
  function type(type : String) : Void;
  function format(object : Dynamic) : Void;
  function attachment(?filename : Dynamic) : Void;
  function sendfile(filename : String, ?options : Dynamic, ?cb : Dynamic->Void) : Void;
  function sendStatus(code : Int) : Void;
  function download(path : String, ?filename : String, ?cb : Dynamic->Void) : Void;
  function links(object : Dynamic) : Void;
  var locals(default, null) : Dynamic;
  function render(view : String, ?locals : Dynamic, ?cb : Dynamic->String->Void) : Void;
  function vary(value : String) : Response;
  var headersSent(default, null) : Bool;
}

extern class Express {
}

typedef Application = {

  public var router:MiddleWare;

  public function set(name:String, value:Dynamic) : Application;

  public function enable(name:String) : Application;

  public function disable(name:String) : Application;

  public function enabled(name:String) : Bool;

  public function disabled(name:String) : Bool;

  public function listen(port:Int, ?address:String) :Void;

  // This sucks to declare these functions as Dynamic but the js impl uses varargs
  public var use:Dynamic;
  public var all:Dynamic;
  public var get:Dynamic;
  public var post:Dynamic;
  public var delete:Dynamic;
  public var param:Dynamic;
}

@:native("Error")
extern class Error {
  public var status:Int;
  public var stack:String;
  public var message:String;

  public function new(error:String);
}
