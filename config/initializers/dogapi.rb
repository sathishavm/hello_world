require 'dogapi'

DDOG = Dogapi::Client.new(ENV['DDOG_API_KEY']) if ENV['DDOG_API_KEY']