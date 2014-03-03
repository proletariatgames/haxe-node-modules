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

  @:overload(function (strategy:String, options:Dynamic) : MiddleWare {})
  @:overload(function (strategy:String, callback:String -> Dynamic -> Dynamic -> Void) : MiddleWare {})
  public function authenticate(strategy:String, options:Dynamic=null,
                               callback:String -> Dynamic -> Dynamic -> Void=null) : MiddleWare;

  @:overload(function (strategy:String, options:Dynamic) : MiddleWare {})
  @:overload(function (strategy:String, callback:String -> Dynamic -> Dynamic -> Void) : MiddleWare {})
  public function authorize (strategy:String, options:Dynamic=null,
                             callback:String -> Dynamic -> Dynamic -> Void=null) : MiddleWare;

  public function serializeUser (callback:Dynamic->(String->Dynamic->Void)->Void) : Void;
  public function deserializeUser (callback:Dynamic->(String->Dynamic->Void)->Void) : Void;

}

extern class Strategy {
}

@:native("BearerStrategy")
extern class BearerStrategy extends Strategy {
  @:overload(function (verify:String->(Dynamic->Dynamic->Dynamic->Void)->Void) : Void {})
  public function new(options:Dynamic, verify:String->(Dynamic->Dynamic->Dynamic->Void)->Void);
}

@:native("BasicStrategy")
extern class BasicStrategy extends Strategy {
  @:overload(function (verify:String->String->(String->Dynamic->Void)->Void ) : Void {})
  public function new(options:Dynamic, verify:String->String->(String->Dynamic->Void)->Void);
}
