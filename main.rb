require 'sinatra'
require 'haml'
require 'sass'
require './lib/tictactoe'

get('/styles.css'){ scss :styles }
