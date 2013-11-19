require 'dm-core'
require 'dm-migrations'
require 'sinatra/flash'

class User
  include DataMapper::Resource
  property :id, Serial
  property :username, String
  property :password, String
  property :games, Integer
  property :won_games, Integer
  property :lost_games, Integer
  property :tied_games, Integer
end

DataMapper.finalize

get '/users' do
  @users = User.all
  haml :users
end

get '/users/new' do
  haml :new_user
end

get '/users/:id' do |id|
  @user = User.get(id)
  haml :show_user
end

get '/users/:id/edit' do
  @user = User.get(params[:id])
  slim :edit_user
end

post '/users' do
  if (params[:user][:username].empty?) || (params[:user][:password].empty?)
    flash[:error] = "Error: The user or the password field is empty"
    redirect to ('/users/new')
  elsif User.first(:username => "#{params[:user][:username]}")
    flash[:error] = "The user has been already created"
    redirect to ('/users/new')
  else
    user = User.create(params[:user])
    puts user
    puts user.games
    user.games = 0
    user.won_games = 0
    user.lost_games = 0
    user.tied_games = 0
    flash[:success] = "User created successfully"
    redirect to("/users/#{user.id}")
  end
end

put 'users/:id' do
  user = User.get(params[:id])
  user.update(params[:user])
  redirect to("/users/#{user.id}")
end

delete '/users/:id' do
   User.get(params[:id]).destroy
   redirect to('/users')
end