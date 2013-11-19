require 'sinatra'
require 'haml'
require 'sass'
require './lib/tictactoe'
require './lib/user'

get('/styles.css'){ scss :styles }
