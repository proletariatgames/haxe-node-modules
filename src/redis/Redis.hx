/**
 * modified from Source: https://github.com/blackdog66/bdog-redis
 */

package redis;

typedef Err = Dynamic;
typedef IntegerReply = Err->Int->Void;
typedef StatusReply = Err->String->Void;
typedef BulkReply = Err->Dynamic->Void;
typedef MultiReply = Err->Array<Dynamic>->Void;

typedef RedisClient = {

  // control
  function shutdown(cb:StatusReply):Void;
  function info(cb:BulkReply):Void;
  function save(cb:StatusReply):Void;
  function bgsave(cb:StatusReply):Void;
  function lastsave(cb:IntegerReply):Void;

  // all
  function exists(k:String,cb:IntegerReply):Void;
  function del(k:String,cb:IntegerReply):Void;
  function type(k:String,cb:StatusReply):Void;
  function keys(pattern:String,cb:MultiReply):Void;
  function randomkey(k:String,cb:StatusReply):Void;
  function rename(k:String,nk:String,cb:StatusReply):Void;
  function renamenx(k:String,nk:String,cb:StatusReply):Void;
  function dbsize(cb:IntegerReply):Void;
  function expire(k:String,secs:Int,cb:IntegerReply):Void;
  function pttl(k:String,cb:IntegerReply):Void;
  function ttl(k:String,cb:IntegerReply):Void;
  function select(index:Int,cb:StatusReply):Void;
  function move(k:String,index:Int,cb:IntegerReply):Void;
  function flushdb(cb:StatusReply):Void;
  function flushall(cb:StatusReply):Void;

  // scan
  @:overload(function (cursor:String,match:String,pattern:String,count:String,number:Int,cb:MultiReply):Void {})
  @:overload(function (cursor:String,count:String,number:Int,cb:MultiReply):Void {})
  @:overload(function (cursor:String,match:String,pattern:String,cb:MultiReply):Void {})
  function scan(cursor:String,cb:MultiReply):Void;

  // strings
  function set(k:String,v:String,cb:Err->Bool->Void):Void;
  @:overload(function (k:Dynamic,cb:BulkReply):Void {})
  function get(k:String,cb:StatusReply):Void;
  function incr(k:String,cb:IntegerReply):Void;
  function incrby(k:String,by:Int,cb:IntegerReply):Void;
  function decr(k:String,cb:IntegerReply):Void;
  function decrby(k:String,by:Int,cb:IntegerReply):Void;
  function setnx(k:String,v:String,cb:Err->Int->Void):Void;
  function mset(ks:Array<Dynamic>,cb:Err->Bool->Void):Void;
  function msetnx(ks:Array<Dynamic>,cb:Err->Int->Void):Void;
  @:overload(function (ks:Array<Dynamic>,cb:Err->Array<Dynamic>->Void):Void {})
  function mget(ks:Array<String>,cb:Err->Array<String>->Void):Void;
  function getset(k:String,v:String,cb:StatusReply):Void;
  function append(k:String,v:String,cb:IntegerReply):Void;
  function substr(k:String,s:Int,e:Int,cb:StatusReply):Void;
  function psetex(k:String,t:Int,v:Dynamic,cb:StatusReply):Void;
  function setex(k:String,t:Int,v:Dynamic,cb:StatusReply):Void;

  // lists
  function lpush(k:String,v:String,cb:IntegerReply):Void;
  @:overload(function (k:String,v:Array<String>,cb:IntegerReply):Void {})
  function rpush(k:String,v:String,cb:IntegerReply):Void;
  function llen(k:String,cb:IntegerReply):Void;
  function lrange(k:String,s:Int,e:Int,cb:MultiReply):Void;
  function ltrim(k:String,s:Int,e:Int,cb:StatusReply):Void;
  function lindex(l:String,i:Int,cb:BulkReply):Void;
  function lset(k:String,i:Int,v:String,cb:StatusReply):Void;
  function lrem(k:String,c:Int,v:String,cb:IntegerReply):Void;
  function lpop(k:String,cb:MultiReply):Void;
  function rpop(k:String,cb:MultiReply):Void;
  function blpop(k:String,s:Int,cb:MultiReply):Void;
  function brpop(k:String,s:Int,cb:MultiReply):Void;
  function rpoplpush(sk:String,dk:String,cb:BulkReply):Void;

  // sets
  @:overload(function (k:String,v:Dynamic,cb:IntegerReply):Void {})
  @:overload(function (k:String,v:Array<Dynamic>,cb:IntegerReply):Void {})
  @:overload(function (k:String,v:Array<String>,cb:IntegerReply):Void {})
  function sadd(k:String,v:String,cb:IntegerReply):Void;
  @:overload(function (k:String,v:Dynamic,cb:IntegerReply):Void {})
  @:overload(function (k:String,v:Array<Dynamic>,cb:IntegerReply):Void {})
  @:overload(function (k:String,v:Array<String>,cb:IntegerReply):Void {})
  function srem(k:String,v:String,cb:IntegerReply):Void;
  function spop(k:String,cb:BulkReply):Void;
  @:overload(function (sk:String,dk:String,member:Dynamic,cb:IntegerReply):Void {})
  function smove(sk:String,dk:String,member:String,cb:IntegerReply):Void;
  function scard(k:String,cb:IntegerReply):Void;
  @:overload(function (k:String,v:Dynamic,cb:IntegerReply):Void {})
  function sismember(k:String,m:String,cb:IntegerReply):Void;
  function sinter(k1:String,k2:String,cb:MultiReply):Void;
  function sinterstore(dst:String,k1:String,k2:String,cb:StatusReply):Void;
  function sunion(k1:String,k2:String,cb:MultiReply):Void;
  function sunionstore(dst:String,k1:String,k2:String,cb:StatusReply):Void;
  function sdiff(k1:String,k2:String,cb:MultiReply):Void;
  function sdiffstore(dst:String,k1:String,k2:String,cb:StatusReply):Void;
  function smembers(k:String,cb:MultiReply):Void;
  function srandmember(k:String,cb:BulkReply):Void;
  @:overload(function (key:Dynamic,cursor:String,match:String,pattern:String,count:String,number:Int,cb:MultiReply):Void {})
  @:overload(function (key:String,cursor:String,match:String,pattern:String,count:String,number:Int,cb:MultiReply):Void {})
  @:overload(function (key:Dynamic,cursor:String,count:String,number:Int,cb:MultiReply):Void {})
  @:overload(function (key:String,cursor:String,count:String,number:Int,cb:MultiReply):Void {})
  @:overload(function (key:Dynamic,cursor:String,match:String,pattern:String,cb:MultiReply):Void {})
  @:overload(function (key:String,cursor:String,match:String,pattern:String,cb:MultiReply):Void {})
  @:overload(function (key:Dynamic,cursor:String,cb:MultiReply):Void {})
  function sscan(key:String,cursor:String,cb:MultiReply):Void;

  // hash
  function hset(k:String,f:String,v:String,cb:IntegerReply):Void;
  @:overload(function(k:Dynamic,f:String,cb:BulkReply):Void {})
  @:overload(function(k:String,f:Dynamic,cb:BulkReply):Void {})
  function hget(k:String,f:String,cb:BulkReply):Void;
  function hsetnx(k:String,f:String,v:String,cb:IntegerReply):Void;
  @:overload(function(k:String, f:Dynamic, cb:StatusReply):Void {})
  function hmset(k:String, f:Array<String>,cb:StatusReply):Void;
  @:overload(function(k:Dynamic,f:Array<String>,cb:MultiReply):Void {})
  function hmget(k:String, f:Array<String>,cb:MultiReply):Void;
  function hincrby(k:String,f:String,v:Int,cb:IntegerReply):Void;
  function hexists(k:String,f:String,cb:IntegerReply):Void;
  function hdel(k:String,f:String,cb:IntegerReply):Void;
  function hlen(k:String,cb:IntegerReply):Void;
  function hkeys(k:String,cb:MultiReply):Void;
  function hvals(k:String,cb:MultiReply):Void;
  @:overload(function(k:Dynamic,cb:MultiReply):Void {})
  function hgetall(k:String,cb:MultiReply):Void;

  // sorted sets
  function zadd(k:String,s:Float,m:String,cb:IntegerReply):Void;
  function zrem(k:String,m:String,cb:IntegerReply):Void;
  function zincrby(k:String,i:Float,m:String,cb:BulkReply):Void;
  function zrank(k:String,m:String,cb:BulkReply):Void;
  function zrevrank(k:String,m:String,cb:BulkReply):Void;
  //function zrange(k:String,s:Float,e:Float,?scores:Bool,cb:MultiReply):Void;
  @:overload(function(k:String,s:Float,e:Float,cb:MultiReply):Void{})
  function zrange(k:String,s:Float,e:Float,scores:String,cb:MultiReply):Void;
  @:overload(function(k:String,s:Float,e:Float,cb:MultiReply):Void{})
  function zrevrange(k:String,s:Float,e:Float,scores:String,cb:MultiReply):Void;
  @:overload(function(k:Dynamic,f:String,cb:BulkReply):Void {})
  @:overload(function(k:String,min:String,max:String,cb:MultiReply):Void {})
  @:overload(function(k:String,min:String,max:String,scores:String,cb:MultiReply):Void {})
  @:overload(function(k:String,min:String,max:String,limit:String,offset:Int,count:Int,cb:MultiReply):Void {})
  function zrangebyscore(k:String,min:Float,max:Float,cb:MultiReply):Void;
  @:overload(function(k:Dynamic,f:String,cb:BulkReply):Void {})
  @:overload(function(k:String,max:String,min:String,cb:MultiReply):Void {})
  @:overload(function(k:String,max:String,min:String,scores:String,cb:MultiReply):Void {})
  @:overload(function(k:String,max:String,min:String,scores:String,limit:String,offset:Int,count:Int,cb:MultiReply):Void {})
  @:overload(function(k:String,max:String,min:String,limit:String,offset:Int,count:Int,cb:MultiReply):Void {})
  function zrevrangebyscore(k:String,max:Float,min:Float,cb:MultiReply):Void;
  function zremrangebyrank(k:String,s:Int,e:Int,cb:IntegerReply):Void;
  function zremrangebyscore(k:String,min:Float,max:Float,cb:IntegerReply):Void;
  function zcard(k:String,cb:IntegerReply):Void;
  function zscore(k:String,e:String,cb:BulkReply):Void;
  function zunionstore(prms:Array<Dynamic>,cb:IntegerReply):Void;
  function zinterstore(prms:Array<Dynamic>,cb:IntegerReply):Void;
  function sort(prms:Array<Dynamic>,cb:MultiReply):Void;

  // Multi
  function multi(?commands:Array<Array<Dynamic>>) : RedisClient;
  function exec(cb:MultiReply): Void;

  // Pub/Sub
  function on(event:String, callback:Dynamic) : Void;
  function once(event:String, callback:Dynamic) : Void;
  function removeListener(event:String, callback:Dynamic) : Void;
  function subscribe(channel:String) : Void;
  function psubscribe(pattern:String) : Void;
  function unsubscribe(channel:String) : Void;
  function punsubscribe(pattern:String) : Void;
  function publish(channel:String, value:String, cb:IntegerReply) : Void;

  function quit():Void;
  function end():Void;

  public var connected:Bool;
}


extern class Redis {

  public static inline var INFINITY:String = "+inf";
  public static inline var NEGATIVE_INFINITY:String = "-inf";
  public static inline var SHOW_SCORES:String = "WITHSCORES";
  public static inline var LIMIT:String = "LIMIT";

  @:overload(function(port:Int, host:String, ?options:Dynamic):RedisClient {})
  @:overload(function(port:String, host:String, ?options:Dynamic):RedisClient {})
  public function createClient(port:Int, host:String) : RedisClient;

  public var debug_mode : Bool;
}

@:native("RedisStore")
extern class RedisStore {
  public function new(options:Dynamic);
}
