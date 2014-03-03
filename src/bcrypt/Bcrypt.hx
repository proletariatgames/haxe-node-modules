package bcrypt;

/**
 * Haxe node.js Bcrypt bindings
 */
typedef Bcrypt = {

  /**
   * Create a Bcrypt hash
   * callback : error:String -> hash:String -> Void
   */
  @:overload(function(data:String, rounds:Int, cb:String -> String -> Void) : Void {})
  function hash (data:String, salt:String, cb:String -> String -> Void) : Void;

  /**
   * Compare Bcrypt hash to data
   * callback : error:String -> isMatch:Bool -> Void
   */
  function compare (data:String, hash:String, cb:String -> Bool -> Void ) : Void;

};
