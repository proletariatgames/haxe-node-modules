package aws;

import aws.AWSClient;

@:keep
extern class SQS {

  public var endpoint : Endpoint;

  public function new(options:Dynamic);
  public function sendMessage(params:Dynamic, callback:AWSCallback) : Request;
  public function sendMessageBatch(params:Dynamic, callback:AWSCallback) : Request;
}
