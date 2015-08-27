package tmi;

import js.Node;

// tmi.js is a Twitch IRC client

typedef Options = {
  var options : {
    var debug : Bool; // show debug messages in console
  };
  var connection : {
    var random : String; // 'chat', 'group', or 'event'
    var server : String;
    var port : Int;
    var reconnect : Bool; // reconnect when disconnected
    var timeout : Int; // ms to wait before disconnecting from unresponsive server
  };
  var identity : {
    var username : String; // twitch user name
    var password : String; // oauth token (do not use user password)
  };
  // list of channels to join when connected
  var channels : Array<String>;
};

typedef User = {
  var username : String;
  // 'display-name' : String;
  // 'user-type' : String; // empty or mod, global_mod, admin, staff
  var subscriber : Bool;
  var turbo : Bool;

  var color : String; // empty or #RRGGBB
  var emotes : Dynamic;
  // 'emotes-raw' : String;
}

@:jsRequire("tmi.js", "client")
extern class Client
{
  public function new(options:Options);

  function action(channel:String, message:String):Void;
  function ban(channel:String, username:String):Void;
  function clear(channel:String):Void;
  function color(channel:String, color:String):Void;
  function commercial(channel:String, seconds:Int):Void;
  function connect():Void;
  function disconnect():Void;
  function host(channel:String, target:String):Void;
  function join(channel:String):Void;
  function mod(channel:String, username:String):Void;
  function mods(channel:String):Void;
  function part(channel:String):Void;
  function ping(channel:String):Void;
  function r9kbeta(channel:String):Void;
  function r9kbetaoff(channel:String):Void;
  function raw(message:String):Void;
  function say(channel:String, message:String):Void;
  @:overload(function(channel:String):Void {})
  function slow(channel:String, length:Int):Void;
  function slowoff(channel:String):Void;
  function subscribers(channel:String):Void;
  function subscribersoff(channel:String):Void;
  @:overload(function(channel:String, username:String):Void {})
  function timeout(channel:String, username:String, length:Int):Void;
  function unban(channel:String, username:String):Void;
  function unhost(channel:String):Void;
  function unmod(channel:String, username:String):Void;
  function whisper(username:String, message:String):Void;

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
