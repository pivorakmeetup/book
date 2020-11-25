require 'webrick'
include WEBrick

сервер = HTTPServer.new(Port: 3000)

сервер.mount_proc '/' do |request, response|
  response.body = 'Це початок твоїх пригод у світі Ruby!'
  response['Content-Type'] = 'text/plain; charset=utf-8'
end

trap('INT') { сервер.shutdown }

сервер.start