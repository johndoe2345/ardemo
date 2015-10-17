require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:ardemo.sqlite3"
require './models'

get '/' do
	@users = User.all
	erb :index
end