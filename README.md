# mod_requester

A simple wrapper for Corona SDKs network.request method.

## Usage

 1. Require the `mod_requester` module.
 1. Set the `host` and `port` of the request.
 1. Use one of the wrapper methods in the API.

```lua
local req = require( 'mod_requester' )

req.host = '123.123.123.123'
req.port = 8081

req.get( '/some/path', function( evt )
  if evt.isError then
    print 'nwetwork error!'
  end
end)
```

the callback event (`evt`) is the same as the one from `network.request`

___The `host` and `port` parameters will stay set until they are updated with new values.___

## API

### .get

Wraps a GET request.

```lua
req.get( '/some/path', callback )
```

Parameter|Details
---------|-------
path|The URI path that is appended to the `req.host` and `reg.port` address.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK network event object.

### .post

Wraps a POST request.

```lua
req.post( '/some/path', post_body, callback )
```

Parameter|Details
---------|-------
path|The URI path that is appended to the `req.host` and `reg.port` address.
post_body|The textual data to post. Convert tables to JSON.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK network event object.

### .put

Wraps a PUT request.

```lua
req.put( '/some/path', put_body, callback )
```

Parameter|Details
---------|-------
path|The URI path that is appended to the `req.host` and `reg.port` address.
put_body|The textual data to put. Convert tables to JSON.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK network event object.

### .delete

Wraps a DELETE request.

```lua
req.put( '/some/path', callback )
```

Parameter|Details
---------|-------
path|The URI path that is appended to the `req.host` and `reg.port` address.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK network event object.

### .head

Wraps a HEAD request.

```lua
req.head( '/some/path', callback )
```

Parameter|Details
---------|-------
path|The URI path that is appended to the `req.host` and `reg.port` address.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK network event object.
