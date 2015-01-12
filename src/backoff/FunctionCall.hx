package backoff;

@:keep
extern class FunctionCall {

  public function new(fn:Dynamic->(String->Dynamic->Void)->Void, args:Array<Dynamic>, callback:String->Dynamic->Void);

  public function isPending() : Bool;
  public function isRunning() : Bool;
  public function isAborted() : Bool;
  public function setStrategy(strategy:BackoffStrategy) : FunctionCall;
  public function failAfter(maxNumberOfBackoffs:Int) : FunctionCall;
  public function getLastResult() : Array<Dynamic>;
  public function getNumRetries() : Int;
  public function start() : Void;
  public function abort() : Void;
}
