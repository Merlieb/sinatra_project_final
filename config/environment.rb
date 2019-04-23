require 'bundler/setup'
require "carrierwave"
require "carrierwave/orm/activerecord"
Bundler.require

ENV['SINATRA_ENV'] ||= "development"

#ActiveRecord 
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/user_auth#{ENV['SINATRA_ENV']}.sqlite"
)

#Configure Carrierwave
CarrierWave.configure do |config|
  config.root = File.dirname(__FILE__) + "/public"
end

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../app/controllers", "*.rb")].each {|f| require f}
