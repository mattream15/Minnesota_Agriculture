require "open-uri"
require "pry"
require "nokogiri"


require_relative "Minnesota_Agriculture/version"
require_relative "Minnesota_Agriculture/cli"
require_relative "Minnesota_Agriculture/scraper"
require_relative "Minnesota_Agriculture/agriculturedata"

module MinnesotaAgriculture
  class Error < StandardError; end
  # Your code goes here...
end
