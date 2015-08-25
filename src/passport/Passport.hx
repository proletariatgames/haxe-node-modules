package passport;

import js.node.Connect;

/**
 * Externs for node.js Passport
 */
extern class Passport {

  @:overload(function (strategy:Strategy) : Passport {})
  public function use(name:String, strategy:Strategy) : Passport;

  public function unuse(name:String) : Passport;

  @:overload(function () : Passport {})
  public function initialize(options:Dynamic=null) : MiddleWare;

  public function session() : MiddleWare;

  @:overload(function (strategy:Array<String>, options:Dynamic) : MiddleWare {})
  @:overload(function (strategy:Array<String>) : MiddleWare {})
  @:overload(function (strategy:String, options:Dynamic) : MiddleWare {})
  public function authenticate(strategy:String) : MiddleWare;

  public function serializeUser (callback:Dynamic->(String->Dynamic->Void)->Void) : Void;
  public function deserializeUser (callback:Dynamic->(String->Dynamic->Void)->Void) : Void;
}

extern class Strategy {
}

@:native("BearerStrategy")
extern class BearerStrategy extends Strategy {
  @:overload(function (verify:String->(Dynamic->Dynamic->Void)->Void) : Void {})
  @:overload(function (verify:String->(Dynamic->Dynamic->Dynamic->Void)->Void) : Void {})
  @:overload(function (options:Dynamic, verify:String->(Dynamic->Dynamic->Void)->Void) : Void {})
  public function new(options:Dynamic, verify:String->(Dynamic->Dynamic->Dynamic->Void)->Void);
}

@:native("BasicStrategy")
extern class BasicStrategy extends Strategy {
  @:overload(function (verify:String->String->(String->Dynamic->Void)->Void ) : Void {})
  public function new(options:Dynamic, verify:String->String->(String->Dynamic->Void)->Void);
}

@:native("LocalAPIKeyStrategy")
extern class LocalAPIKeyStrategy extends Strategy {
  @:overload(function (verify:String->(String->Dynamic->Void)->Void ) : Void {})
  public function new(options:Dynamic, verify:String->(String->Dynamic->Void)->Void);
}

@:native("GoogleStrategy")
extern class GoogleStrategy extends passport.Strategy {
  @:overload(function (verify:String->Dynamic->(String->Dynamic->Void)->Void ) : Void {})
  public function new(options:Dynamic, verify:String->Dynamic->(String->Dynamic->Void)->Void);
  public function saveAssociation(handler:(Dynamic->Dynamic->String->String->Int->(Dynamic->Void)->Void)) : Void;
  public function loadAssociation(handler:(Dynamic->(Dynamic->Dynamic->Dynamic->Dynamic->Void)->Void)) : Void;
}

@:native("GoogleOAuthStrategy")
extern class GoogleOAuthStrategy extends passport.Strategy {
  @:overload(function (verify:String->String->Dynamic->(String->Dynamic->Void)->Void ) : Void {})
  public function new(options:Dynamic, verify:String->String->Dynamic->(String->Dynamic->Void)->Void);
}

@:native("TwitchStrategy")
extern class TwitchStrategy extends passport.Strategy {
  @:overload(function (verify:String->String->Dynamic->(String->Dynamic->Void)->Void ) : Void {})
  public function new(options:Dynamic, verify:String->String->Dynamic->(String->Dynamic->Void)->Void);
}
