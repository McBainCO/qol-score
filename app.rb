require "sinatra"
require "active_record"
require "rack-flash"
require "gschool_database_connection"

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  get '/' do
    erb :index
  end

  get '/cities' do
    erb :cities
  end

  get '/jobs' do
    erb :jobs
  end

  get '/my_salary' do
    erb :current_salary_feels
  end

end