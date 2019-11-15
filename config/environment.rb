require 'bundler/setup'
require 'require_all'

Bundler.require
require_all './lib'
require 'sinatra/activerecord/rake'
require 'rainbow'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')


ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.logger = nil
