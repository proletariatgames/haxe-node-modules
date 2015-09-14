package redlock;

typedef Err = Dynamic;
typedef LockCallback = Err->Lock->Void;

typedef Options = {
  // the expected clock drift; for more details see http://redis.io/topics/distlock
  var driftFactor:Float;

  // the max number of times Redlock will attempt to lock a resource before erroring
  var retryCount:Int;

  // the time in ms between attempts
  var retryDelay:Int;
}

extern class Lock {
  public function unlock(cb:Void->Void) : Void;
  public function extend(ttl:Int, cb:LockCallback) : Void;
}

@:jsRequire('redlock')
extern class Redlock {
  public function new(redisClients:Array<Dynamic>, options:Options);

  public function lock(resource:String, ttl:Int, cb:LockCallback) : Void;
  public function unlock(lock:Lock, cb:Void->Void) : Void;
  public function extend(lock:Lock, ttl:Int, cb:LockCallback) : Void;
}
