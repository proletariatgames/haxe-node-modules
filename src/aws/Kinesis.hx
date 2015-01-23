package aws;

import aws.AWSClient;

@:keep
extern class Kinesis {

  public var endpoint : Endpoint;

  public function addTagsToStream(params:Dynamic, callback:AWSCallback) : Request;
  public function createStream(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteStream(params:Dynamic, callback:AWSCallback) : Request;
  public function describeStream(params:Dynamic, callback:AWSCallback) : Request;
  public function getRecords(params:Dynamic, callback:AWSCallback) : Request;
  public function getShardIterator(params:Dynamic, callback:AWSCallback) : Request;
  public function listStreams(params:Dynamic, callback:AWSCallback) : Request;
  public function listTagsForStream(params:Dynamic, callback:AWSCallback) : Request;
  public function mergeShards(params:Dynamic, callback:AWSCallback) : Request;
  public function putRecord(params:Dynamic, callback:AWSCallback) : Request;
  public function putRecords(params:Dynamic, callback:AWSCallback) : Request;
  public function removeTagsFromStream(params:Dynamic, callback:AWSCallback) : Request;
  public function splitShard(params:Dynamic, callback:AWSCallback) : Request;
}
