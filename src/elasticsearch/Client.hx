package elasticsearch;

import js.Node;


typedef ClientReply = Dynamic->Dynamic->Dynamic->Void;


@:jsRequire("elasticsearch", "Client")
extern class Client
{
  public function new(options:Dynamic);
  public function get(params:Dynamic, callback:ClientReply) : Void;
  public function mget(params:Dynamic, callback:ClientReply) : Void;
  public function delete(params:Dynamic, callback:ClientReply) : Void;
  public function update(params:Dynamic, callback:ClientReply) : Void;
  public function searchTemplate(params:Dynamic, callback:ClientReply) : Void;
}
