require 'pry'
require 'nokogiri'
require 'httparty' 
require 'open-uri'

require_relative './superherobios/data_retriever.rb'
require_relative "./superherobios/version.rb"
require_relative './superherobios/superherobio.rb'
require_relative './superherobios/cli.rb'

module Superherobios
  class Error < StandardError; end
  # Your code goes here...
end
