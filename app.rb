require 'sinatra'

Dir["#{Dir.pwd}/lib/models/*.rb"].each { |file| require file }

get '/' do
  # erb :index, locals: { categories: [all] }
  erb :index
end