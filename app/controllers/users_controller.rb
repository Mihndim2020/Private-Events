class UsersController < ApplicationController
  include UsersHelper
  before_action :require_login, except: %i[new create]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash.notice = "User #{@user.name} Sign up successfully created! You are welocme, Thank you!!!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @created_events = current_user.events
    @past_events = current_user.attended_events.previous
    @upcoming_events = current_user.attended_events.upcoming
  end
end
