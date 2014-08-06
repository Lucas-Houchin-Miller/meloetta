class UsersController < ApplicationController
  before_filter :login_required, :except => [:index, :new, :create]
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.profile_url = params[:profile_url]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    if @user.id != session['user_id']
      redirect_to '/users', :notice => "Can't access #{@user.name}"
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.profile_url = params[:profile_url]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy


    redirect_to "/users"
  end
end
