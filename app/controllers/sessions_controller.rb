class SessionsController < ApplicationController

  def new
    # params.permit(:name, :password, :return_to)

    byebug
    session[:return_to] = params[:return_to] if params[:return_to]
  end

  def create
    puts "tgao-1"
    params.permit(:name, :password, :return_to)

    puts "tgao0"
    user = User.find_by_name(params[:name])
    puts user
    puts params[:name]
    puts "tgao2"
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts "tgao"
      byebug
      puts session[:return_to]
      puts root_url
      if session[:return_to]
        redirect_to session[:return_to]
        session[:return_to] = nil
      else
        redirect_to root_url
      end
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    params.permit(:name, :password, :return_to)

    session[:user_id] = nil
    redirect_to login_url
  end

end