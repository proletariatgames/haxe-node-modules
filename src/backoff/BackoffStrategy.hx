package backoff;

@:keep
extern class BackoffStrategy {
  public function getMaxDelay() : Int;
  public function getInitialDelay() : Int;
  public function next() : Int;
  public function reset() : Void;
}
