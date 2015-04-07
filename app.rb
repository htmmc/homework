require 'sinatra'
require 'json'

get '/code' do 
	content_type :json
	file = File.read('app.json')
end 