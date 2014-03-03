package aws;

import aws.AWSClient;

@:keep
extern class SNS {

  public var endpoint : Endpoint;

  public function new(options:Dynamic);

  public function addPermission(params:Dynamic, callback:AWSCallback) : Request;
  public function confirmSubscription(params:Dynamic, callback:AWSCallback) : Request;
  public function createPlatformApplication(params:Dynamic, callback:AWSCallback) : Request;
  public function createPlatformEndpoint(params:Dynamic, callback:AWSCallback) : Request;
  public function createTopic(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteEndpoint(params:Dynamic, callback:AWSCallback) : Request;
  public function deletePlatformApplication(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteTopic(params:Dynamic, callback:AWSCallback) : Request;
  public function getEndpointAttributes(params:Dynamic, callback:AWSCallback) : Request;
  public function getPlatformApplicationAttributes(params:Dynamic, callback:AWSCallback) : Request;
  public function getSubscriptionAttributes(params:Dynamic, callback:AWSCallback) : Request;
  public function getTopicAttributes(params:Dynamic, callback:AWSCallback) : Request;
  public function listEndpointsByPlatformApplication(params:Dynamic, callback:AWSCallback) : Request;
  public function listPlatformApplications(params:Dynamic, callback:AWSCallback) : Request;
  public function listSubscriptions(params:Dynamic, callback:AWSCallback) : Request;
  public function listSubscriptionsByTopic(params:Dynamic, callback:AWSCallback) : Request;
  public function listTopics(params:Dynamic, callback:AWSCallback) : Request;
  public function publish(params:Dynamic, callback:AWSCallback) : Request;
  public function removePermission(params:Dynamic, callback:AWSCallback) : Request;
  public function setEndpointAttributes(params:Dynamic, callback:AWSCallback) : Request;
  public function setPlatformApplicationAttributes(params:Dynamic, callback:AWSCallback) : Request;
  public function setSubscriptionAttributes(params:Dynamic, callback:AWSCallback) : Request;
  public function setTopicAttributes(params:Dynamic, callback:AWSCallback) : Request;
  public function subscribe(params:Dynamic, callback:AWSCallback) : Request;
  public function unsubscribe(params:Dynamic, callback:AWSCallback) : Request;

}
