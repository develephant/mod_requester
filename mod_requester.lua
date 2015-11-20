--== mod_requester
--== A simple network.request wrapper
--==(c)2015 C. Byerley - @develephant
local req =
{
  host = '0.0.0.0',
  port = 8081,
  --== methods
  GET     = "GET",
  POST    = "POST",
  PUT     = "PUT",
  DELETE  = "DELETE"
  HEAD    = "HEAD"
}

local function _getUri( path )
  local req.port = req.port or 8081
  local req.host = req.host or '0.0.0.0'
  return req.host .. ':' .. req.port .. path
end

function req.get( path, callback )
  return network.request( _getUri( path ), req.GET, callback )
end

function req.post( path, post_body, callback )
  local post_body = post_body or ''
  return network.request( _getUri( path ), req.POST, callback, {
    body = post_body
  })
end

function req.put( path, body, callback )
  local body = body or ''
  return network.request( _getUri( path ), req.PUT, callback, {
    body = body
  })
end

function req.delete( path, callback )
  return network.request( path, req.DELETE, callback )
end

function req.head( path, callback )
  return network.request( path, req.HEAD, callback )
end

return req
