require_relative '../models/task.rb'


class TaskManagerApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :dashboard
    # require 'pry';binding.pry
  end

  get '/tasks' do
     @tasks = Task.all
     erb :index
  end

  get '/tasks/new' do
    erb :new
  end

  get '/tasks/:id' do #this is dynamic
     @task = Task.find(params[:id])
     erb :show
   end

  post '/tasks' do
    task = Task.new(params[:task])
    task.save
    redirect '/tasks'
  end

  get '/tasks/:id/edit' do
    @task = Task.find(params[:id])
    erb :edit
  end

end
