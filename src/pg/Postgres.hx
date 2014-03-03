//------------------------------------------------------------------------------
// Copyright 2013 Proletariat Inc. All rights reserved.
// Owner : Joe Mukai
//------------------------------------------------------------------------------
package pg;

/** error:Dynamic -> client:Client -> done:(Void -> Void) -> Void */
typedef ConnectionCallback = Dynamic -> Client -> (Void -> Void) -> Void;

typedef Defaults = {
  var user:String;
  var database:String;
  var password:String;
  var host:String;
  var port:Int;
  var rows:Int;
  var poolSize:Int;
  var poolIdleTimeout:Int;
  var reapIntervalMillis:Int;
  var binary:Bool;
  var parseInt8:Bool;
}

typedef PG = {

  var defaults : Defaults;

  @:overload(function(handler:ConnectionCallback):Void {})
  @:overload(function(config:Dynamic, handler:ConnectionCallback):Void {})
  function connect(connectionString:String, handler:ConnectionCallback):Void;

  function end():Void;
}

typedef Client = {

  /* handler : Error -> Void */
  function connect(?handler:Dynamic -> Void):Void;

  function end():Void;

  /**
   * Providing callback will buffer all result in memory before calling, do not use for large result sets
   * callback(object error, object result)
   */
  @:overload(function(config:Dynamic):Query {})
  @:overload(function(config:Dynamic, handler:Dynamic -> PGResult -> Void):Void {})
  @:overload(function(queryText:String):Query {})
  @:overload(function(queryText:String, values:Array<Dynamic>):Query {})
  @:overload(function(queryText:String, values:Array<Dynamic>, handler:Dynamic -> PGResult -> Void):Void {})
  function query(queryText:String, handler:Dynamic -> PGResult -> Void):Void;

  /**
   * Events:
   * drain
   * error : object error
   * notification : object message
   * notice : object notice
   */
  @:overload(function(event:String, handler:Void -> Void):Void {})
  function on(event:String, handler:Dynamic->Void):Void;
}

typedef Query = {
  /**
   * Events :
   * row : (object row, object result)
   * error : (object error)
   * end : (object result)
   */
  @:overload(function(event:String, handler:Dynamic -> Dynamic -> Void):Void {})
  function on(event:String, handler:Dynamic -> Void):Void;
}

typedef PGResult = {
  /* The sql command that was executed (e.g. "SELECT", "UPDATE", etc.) */
  var command:String;

  /* The number of rows affected by the SQL statement (more information) */
  var rowCount:Int;

  /* The oid returned */
  var oid:String;

  /* An array of rows (if the addRow command is used) */
  var rows:Array<Dynamic>;

  function addRow(row:Dynamic):Dynamic;
}
