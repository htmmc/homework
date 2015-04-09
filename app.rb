require 'sinatra'
require 'json'

get '/code' do 
	content_type :json
	str = File.readlines('app.rb').flat_map{|i| i.split(/[\n\t]/)}.join(", ")
	file = {"codes" => str}
	JSON.pretty_generate(file)
end 
