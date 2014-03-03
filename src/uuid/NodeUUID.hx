package uuid;

/**
 * haxe bindings for node-uuid
 */
typedef NodeUUID = {

  function v1(?options:Dynamic, ?buffer:Dynamic, ?offset:Int) : String;

  function v4(?options:Dynamic, ?buffer:Dynamic, ?offset:Int) : String;

  function parse(id:String, ?buffer:Dynamic, ?offset:Int) : Dynamic;

  function unparse(buffer:Dynamic, ?offset:Int) : String;

  function noConflict() : NodeUUID;
}
