require 'sinatra'
require 'json'

set :port, 3000

get '/' do
  'This is the platform.'
end

post '/evaluations/:id' do
  puts "Evaluation \##{params['id']} updated:"
  puts JSON.pretty_generate(
    id: params['id'], format: params['format'], content: params['content']
  ) + "\n\n"
  204
end
