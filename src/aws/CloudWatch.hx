package aws;

import aws.AWSClient;

@:keep
extern class CloudWatch {

  public function new(options:Dynamic);
  public function putMetricData(params:Dynamic, callback:AWSCallback) : Request;
}
