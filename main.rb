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

get '/login' do
  haml :login
end

post '/login' do
  if (params[:user][:username].empty?) || (params[:user][:password].empty?)
    flash[:error] = "Error: The user or the password field is empty"
    redirect to ('/login')
  elsif User.first(:username => "#{params[:user][:username]}", :password => "#{params[:user][:password]}")
    flash[:success] = "Login successfully"
    redirect to ('/')
  else
    flash[:error] = "The user doesn't exist or the password is invalid"
    redirect to("/login")
  end
end