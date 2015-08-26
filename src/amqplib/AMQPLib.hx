package amqplib;

import js.Node;

typedef Err = Dynamic;

typedef Message = {
  public var content:NodeBuffer;
  public var fields:Dynamic;
  public var properties:Dynamic;
}

typedef Channel = {
  function close(cb:Err->Void):Void;
  function assertQueue(queue:String, options:Dynamic, cb:Err->Dynamic->Void):Void;
  function checkQueue(queue:String, cb:Err->Dynamic->Void):Void;
  function deleteQueue(queue:String, options:Dynamic, cb:Err->Dynamic->Void):Void;
  function purgeQueue(queue:String, cb:Err->Dynamic->Void):Void;
  function bindQueue(queue:String, source:String, pattern:String, args:Dynamic, cb:Err->Dynamic->Void):Void;
  function unbindQueue(queue:String, source:String, pattern:String, cb:Err->Dynamic->Void):Void;
  function assertExchange(exchange:String, type:String, options:Dynamic, cb:Err->Dynamic->Void):Void;
  function checkExchange(exchange:String, cb:Err->Dynamic->Void):Void;
  function deleteExchange(exchange:String, options:Dynamic, cb:Err->Dynamic->Void):Void;
  function bindExchange(destination:String, source:String, pattern:String, args:Dynamic, cb:Err->Dynamic->Void):Void;
  function unbindExchange(destination:String, source:String, pattern:String, args:Dynamic, cb:Err->Dynamic->Void):Void;
  function publish(exchange:String, routingKey:String, content:NodeBuffer, options:Dynamic):Void;
  @:overload(function(queue:String, content:NodeBuffer):Void {})
  function sendToQueue(queue:String, content:NodeBuffer, options:Dynamic):Void;
  function consume(queue:String, callback:Message->Void, options:Dynamic, cb:Err->Dynamic->Void):Void;
  function cancel(consumerTag:String, cb:Err->Dynamic->Void):Void;
  function get(queue:String, options:Dynamic, cb:Err->Dynamic->Void):Void;
  function ack(message:Message, allUpTo:Bool):Void;
  function ackAll():Void;
  function nack(message:Message, allUpTo:Bool, requeue:Bool):Void;
  function nackAll(requeue:Bool):Void;
  function reject(message:Message, requeue:Bool):Void;
  @:overload(function (count:Int):Void {})
  function prefetch(count:Int, global:Dynamic, cb:Err->Dynamic->Void):Void;
  function recover(cb:Err->Dynamic->Void):Void;
}

typedef Connection = {
  function close(cb:Err->Void):Void;
  function createChannel(cb:Err->Channel->Void):Void;
  function createConfirmChannel(cb:Err->Channel->Void):Void;
}

@:jsRequire('amqplib/callback_api')
extern class AMQPLib {
  @:overload(function(url:String, cb:Err->Connection->Void):Void {})
  static function connect(url:String, socketOptions:Dynamic, cb:Err->Connection->Void) : Void;
}
