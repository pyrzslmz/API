require 'sinatra'
require 'json'

get '/api/v1/hello' do
    content_type :json
    {message: 'Ben Batuhan Polat!' }.to_json
end

get '/api/v1/greet/:name' do
    content_type :json
    name = params[:name]
    { message: "Hello #{name}!" }.to_json
  end