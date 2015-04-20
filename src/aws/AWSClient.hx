package aws;

import js.Node;

// Error -> Data -> Void
typedef AWSCallback = String -> Dynamic -> Void;

class AWSClient {

  public static var instance(get_instance, never) : AWSClient;
  static var m_instance:AWSClient;
  var m_aws(default, null):Dynamic;
  public var config(get_config, never) : Config;

  function new() {
    m_aws = Node.require("aws-sdk");
  }

  inline static function get_instance() : AWSClient {
    if (m_instance == null) m_instance = new AWSClient();
    return m_instance;
  }

  public function get_config() : Config {
    return m_aws.config;
  }

  // Create new Endpoint
  public function createEndpoint(endpoint:String) : Endpoint {
    return untyped __js__("new this.m_aws.Endpoint(endpoint)");
  }

  // Create new SNS Service
  public function createSNS() : SNS {
    return untyped __js__("new this.m_aws.SNS()");
  }

  // Create new S3 Service
  public function createS3() : S3 {
    return untyped __js__("new this.m_aws.S3()");
  }

  // Create new SQS Service
  public function createSQS(?options:Dynamic) : SQS {
    if (options == null) {
      options = {};
    }
    return untyped __js__("new this.m_aws.SQS(options)");
  }

  // Create new DynamoDB
  public function createDynamoDB(?options:Dynamic) : DynamoDB {
    if (options == null) {
      options = {};
    }
    return untyped __js__("new this.m_aws.DynamoDB(options)");
  }

  // Create new Kinesis
  public function createKinesis(?options:Dynamic) : Kinesis {
    if (options == null) {
      options = {};
    }
    return untyped __js__("new this.m_aws.Kinesis(options)");
  }

  // Create new CloudWatch
  public function createCloudWatch(?options:Dynamic) : CloudWatch {
    if (options == null) {
      options = {};
    }
    return untyped __js__("new this.m_aws.CloudWatch(options)");

  }
}
