package backoff;

@:keep
extern class Backoff {
  public function new(backoffStrategy:BackoffStrategy);
  public function failAfter(numberOfBackoffs:Int) : Void;
  public function backoff(err:Dynamic) : Void;
  public function reset() : Void;
}
