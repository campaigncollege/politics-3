require 'sinatra'
require 'open-uri'
require 'json'
require 'pp'
require_relative 'wikipedia.rb'

get '/' do
  wikipedia = Wikipedia.new(url: 'http://en.wikipedia.org/w/api.php?format=json&action=query&titles=Luxemburgism&prop=revisions&rvprop=content')
  wikipedia.title
end

