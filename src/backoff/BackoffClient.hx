package backoff;

typedef BackoffClient = {
  function fibonacci(options:Dynamic) : Backoff;
  function exponential(options:Dynamic) : Backoff;
  function call(fn:Dynamic->(String->Dynamic->Void)->Void, args:Array<Dynamic>, callback:String->Dynamic->Void) : FunctionCall;
}
