require 'bundler'
Bundler.require

require './bin/playlist.rb'
require './bin/song.rb'
require './bin/song_playlist.rb'

require 'sinatra/activerecord/rake'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

ActiveRecord::Base.logger = Logger.new(STDOUT)