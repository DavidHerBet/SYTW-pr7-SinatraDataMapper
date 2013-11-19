require 'sinatra'
require 'haml'
require 'sass'
require './lib/tictactoe'
require './lib/user'

get('/styles.css'){ scss :styles }

configure :development do
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

User.auto_migrate!