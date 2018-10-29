require 'sinatra'
require 'net/http'
require 'json'

set :port, 3001

get '/' do
  'This is the evaluator.'
end

post '/evaluate' do
  callback(evaluate)
  204
end

def evaluate
  { result: "You are #{params['age']} years old." }.to_json
end

def callback(content)
  Net::HTTP.post_form(
    URI("http://0.0.0.0:3000/evaluations/#{params['id']}"),
    format: 'JSON', content: content
  )
end
