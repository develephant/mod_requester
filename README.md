# mod_requester

A simple wrapper for Corona SDKs [network.request](https://docs.coronalabs.com/api/library/network/request.html) method.

## Usage

 1. Require the `mod_requester` module.
 1. Set the `host` and `port` of the request.
 1. Use one of the wrapper methods in the API.

```lua
local req = require( 'mod_requester' )

req.host = '123.123.123.123'
req.port = 8081

req.get( '/some/uri/path', function( evt )
  if evt.isError then
    print 'network error!'
  end
end)
```

the callback event (`evt`) is the same one used in `network.request` from the Corona SDK API.

___The `host` and `port` parameters will stay set until they are updated with new values.___

## API

### .get

Wraps a GET request.

```lua
req.get( '/some/uri/path', callback )
```

__Parameters__

Name|Details
----|:------
path|The URI path that is appended to the `req.host` and `req.port` address.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK [network event object](https://docs.coronalabs.com/api/event/networkRequest/index.html).

__Returns__

Name|Details
----|:------
requestId|The request identifier. This can be used with [network.cancel( requestId )](https://docs.coronalabs.com/api/library/network/cancel.html).

---

### .post

Wraps a POST request.

```lua
req.post( '/some/uri/path', post_body, callback )
```

__Parameters__

Name|Details
----|:------
path|The URI path that is appended to the `req.host` and `req.port` address.
post_body|The textual data to post. Convert tables to JSON.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK [network event object](https://docs.coronalabs.com/api/event/networkRequest/index.html).

__Returns__

Name|Details
----|:------
requestId|The request identifier. This can be used with [network.cancel( requestId )](https://docs.coronalabs.com/api/library/network/cancel.html).

---

### .put

Wraps a PUT request.

```lua
req.put( '/some/uri/path', put_body, callback )
```

__Parameters__

Name|Details
----|:------
path|The URI path that is appended to the `req.host` and `req.port` address.
put_body|The textual data to put. Convert tables to JSON.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK [network event object](https://docs.coronalabs.com/api/event/networkRequest/index.html).

__Returns__

Name|Details
----|:------
requestId|The request identifier. This can be used with [network.cancel( requestId )](https://docs.coronalabs.com/api/library/network/cancel.html).

### .delete

---

Wraps a DELETE request.

```lua
req.put( '/some/uri/path', callback )
```

__Parameters__

Name|Details
----|:------
path|The URI path that is appended to the `req.host` and `req.port` address.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK [network event object](https://docs.coronalabs.com/api/event/networkRequest/index.html).

__Returns__

Name|Details
----|:------
requestId|The request identifier. This can be used with [network.cancel( requestId )](https://docs.coronalabs.com/api/library/network/cancel.html).

---

### .head

Wraps a HEAD request.

```lua
req.head( '/some/uri/path', callback )
```

__Parameters__

Name|Details
----|:------
path|The URI path that is appended to the `req.host` and `req.port` address.
callback|The method that is called when the request returns. The `evt` is the standard Corona SDK [network event object](https://docs.coronalabs.com/api/event/networkRequest/index.html).

__Returns__

Name|Details
----|:------
requestId|The request identifier. This can be used with [network.cancel( requestId )](https://docs.coronalabs.com/api/library/network/cancel.html).
