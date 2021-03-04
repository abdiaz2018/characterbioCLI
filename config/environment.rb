require 'pry'
require 'nokogiri'
require 'httparty' 
require 'open-uri'

require_relative '../lib/superherobios/data_retriever.rb'
require_relative "../lib/superherobios/version.rb"
require_relative '../lib/superherobios/superherobio.rb'
require_relative '../lib/superherobios/cli.rb'

module Superherobios
  class Error < StandardError; end
  # Your code goes here...
end
