package aws;

import aws.AWSClient;

@:keep
extern class DynamoDB {
  public var endpoint : Endpoint;
  public function new(options:Dynamic);
  public function batchGetItem(params:Dynamic, callback:AWSCallback) : Request;
  public function batchWriteItem(params:Dynamic, callback:AWSCallback) : Request;
  public function createTable(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteItem(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteTable(params:Dynamic, callback:AWSCallback) : Request;
  public function describeTable(params:Dynamic, callback:AWSCallback) : Request;
  public function getItem(params:Dynamic, callback:AWSCallback) : Request;
  public function listTables(params:Dynamic, callback:AWSCallback) : Request;
  public function putItem(params:Dynamic, callback:AWSCallback) : Request;
  public function query(params:Dynamic, callback:AWSCallback) : Request;
  public function scan(params:Dynamic, callback:AWSCallback) : Request;
  public function updateItem(params:Dynamic, callback:AWSCallback) : Request;
  public function updateTable(params:Dynamic, callback:AWSCallback) : Request;
  public function waitFor(state:String, params:Dynamic, callback:AWSCallback) : Request;
}