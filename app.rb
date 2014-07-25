require "sinatra"
require "active_record"
require "rack-flash"
require "gschool_database_connection"

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  # def initialize
  # @database_connection = GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"])
  # end

  get '/' do
    erb :index
  end

  get '/login' do
    erb :'user_views/user_login'
  end

  get '/survey' do
    erb :'user_views/survey'
  end

  get '/user_homepage' do
    erb :'user_views/user_homepage'
  end


  # post '/user_homepage' do
  #   def register_user(full_name, email, password)
  #     @database_connection.sql("Insert Into users (fullname, email, password) VALUES (#{full_name}, #{email}, #{password}")
  #   end
  #
  #   full_name = params[:full_name]
  #   email = params[:email]
  #   password = params[:password]
  #
  # @database_connection.register_user(full_name, email, password)
  # end

  get '/cities' do
    erb :cities
  end

  get '/jobs' do
    erb :jobs
  end




end