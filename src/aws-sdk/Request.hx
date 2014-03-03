package aws;

import aws.AWSClient;

extern class Request {

  public function on(event:String, handler:Dynamic -> Void) : Request;

  public function abort() : Request;

  public function createReadStream() : Dynamic;

  public function eachPage(callback:String -> Dynamic -> Bool) : Void;

  public function eachItem(callback:AWSCallback) : Void;

  public function isPageable() : Bool;

  @:overload(function() : Void {})
  public function send(callback:AWSCallback) : Void;
}
