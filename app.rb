require 'bundler/setup'
require 'sinatra'
require 'dotmoji'
require 'json'

get '/api/mapping/:text' do
  text = params[:text][0..16]
  data = Dotmoji.map_data(text)

  content_type :json
  data.to_json
end
