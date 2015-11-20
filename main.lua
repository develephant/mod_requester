local req = require( "mod_requester" )

req.get( '/rpi/temp', function( evt ) {
  print 'got'
})
