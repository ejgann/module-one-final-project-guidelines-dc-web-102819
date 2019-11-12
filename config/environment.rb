require 'bundler/setup'
Bundler.require
require 'require_all'
require_all './bin'

require 'sinatra/activerecord/rake'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')


ActiveRecord::Base.logger = Logger.new(STDOUT)