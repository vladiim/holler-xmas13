require 'sinatra'

Dir["#{Dir.pwd}/app/*.rb"].each { |file| require file }

configure :production do
  require 'newrelic_rpm'
end

class Queue
  def self.size
    [0, 3].sample
  end
end

class Streams
  def self.okcat
    'utv16093748'
  end

  def self.wsj
    'utv4717475'
  end
end

class Shocker
  attr_accessor :order
  def initialize
    @order = 1
  end
end

class Shockee
  attr_accessor :stream
  def initialize
    @stream = [Streams.okcat, Streams.wsj].sample
  end
end

get '/' do
  shocker = Shocker.new
  shockee = Shockee.new
  erb :index, locals: { queue: Queue.size, stream: shockee.stream, order: shocker.order }
end