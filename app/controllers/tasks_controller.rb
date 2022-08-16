class TasksController < ApplicationController
  before_action :authorize, only: :create

  def index

  end

  def create
    params.permit(:task)
    puts "tgao101"
    puts params


    current_user.tasks.create!(name: params[:task]["name"])
    redirect_to tasks_url
  end
end