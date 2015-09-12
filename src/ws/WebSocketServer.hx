package ws;

import js.Node;

@:jsRequire("ws", "Server")
extern class WebSocketServer
{
  public function new(options:Dynamic);

  // EventEmitter fields
  function addListener(event:String,fn:NodeListener):Dynamic;
  function on(event:String,fn:NodeListener):Dynamic;
  function once(event:String,fn:NodeListener):Void;
  function removeListener(event:String,listener:NodeListener):Void;
  function removeAllListeners(event:String):Void;
  function listeners(event:String):Array<NodeListener>;
  function setMaxListeners(m:Int):Void;
  function emit(event:String,?arg1:Dynamic,?arg2:Dynamic,?arg3:Dynamic):Void;
}
