package aws;

import aws.AWSClient;

@:keep
extern class S3 {
  public function new();

  public function abortMultipartUpload(params:Dynamic, callback:AWSCallback) : Request;
  public function completeMultipartUpload(params:Dynamic, callback:AWSCallback) : Request;
  public function copyObject(params:Dynamic, callback:AWSCallback) : Request;
  public function createBucket(params:Dynamic, callback:AWSCallback) : Request;
  public function createMultipartUpload(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteBucket(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteBucketCors(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteBucketLifecycle(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteBucketPolicy(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteBucketTagging(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteBucketWebsite(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteObject(params:Dynamic, callback:AWSCallback) : Request;
  public function deleteObjects(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketAcl(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketCors(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketLifecycle(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketLocation(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketLogging(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketNotification(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketPolicy(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketRequestPayment(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketTagging(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketVersioning(params:Dynamic, callback:AWSCallback) : Request;
  public function getBucketWebsite(params:Dynamic, callback:AWSCallback) : Request;
  public function getObject(params:Dynamic, callback:AWSCallback) : Request;
  public function getObjectAcl(params:Dynamic, callback:AWSCallback) : Request;
  public function getObjectTorrent(params:Dynamic, callback:AWSCallback) : Request;
  public function getSignedUrl(operation:String, params:Dynamic, callback:AWSCallback) : Request;
  public function headBucket(params:Dynamic, callback:AWSCallback) : Request;
  public function headObject(params:Dynamic, callback:AWSCallback) : Request;
  public function listBuckets(params:Dynamic, callback:AWSCallback) : Request;
  public function listMultipartUploads(params:Dynamic, callback:AWSCallback) : Request;
  public function listObjects(params:Dynamic, callback:AWSCallback) : Request;
  public function listObjectVersions(params:Dynamic, callback:AWSCallback) : Request;
  public function listParts(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketAcl(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketCors(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketLifecycle(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketLogging(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketNotification(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketPolicy(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketRequestPayment(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketTagging(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketVersioning(params:Dynamic, callback:AWSCallback) : Request;
  public function putBucketWebsite(params:Dynamic, callback:AWSCallback) : Request;
  public function putObject(params:Dynamic, callback:AWSCallback) : Request;
  public function putObjectAcl(params:Dynamic, callback:AWSCallback) : Request;
  public function restoreObject(params:Dynamic, callback:AWSCallback) : Request;
  public function uploadPart(params:Dynamic, callback:AWSCallback) : Request;
  public function uploadPartCopy(params:Dynamic, callback:AWSCallback) : Request;
  public function waitFor(state:String, params:Dynamic, callback:AWSCallback) : Request;
}
