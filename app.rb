require 'sinatra'

Dir["#{Dir.pwd}/lib/models/*.rb"].each { |file| require file }

CHANNEL_NAMES = %w( safacon safacon safacon safacon safacon )

class Channel
  attr_accessor :name
end

get '/' do
  # erb :index, locals: { categories: [all] }
  erb :index
end