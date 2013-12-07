require 'sinatra'
require 'open-uri'
require 'json'
require 'pp'

get '/' do
  
  body = open('http://en.wikipedia.org/w/api.php?format=json&action=query&titles=Luxemburgism&prop=revisions&rvprop=content').read
  data = JSON.parse(body)['query']['pages']
  keys = data.keys
  id = keys.first
  pp(data[id]['title'])

end