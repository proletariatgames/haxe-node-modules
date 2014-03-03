package aws;

extern class Config {

  var credentials: Dynamic; // TODO AWS.Credentials
  var credentialProvider: Dynamic; // TODO AWS.CredentialProviderChain
  var region : String;
  var logger: Dynamic;
  var apiVersions: Dynamic;
  var apiVersion : String;
  var endpoint: Endpoint;
  var httpOptions: Dynamic;
  var maxRetries: Int;
  var maxRedirects : Int;
  var paramValidation : Bool;
  var sslEnabled : Bool;
  var s3ForcePathStyle : Bool;
  var computeChecksums : Bool;
  var dynamoDbCrc32 : Bool;

  public function new(options:Dynamic=null);

  @:overload(function(options:Dynamic) : Void {})
  public function update(options:Dynamic, allowUnknownKeys:Bool) : Void;

  public function loadFromPath(path:String) : Void;

}
