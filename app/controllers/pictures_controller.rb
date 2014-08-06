class PicturesController < ApplicationController
  before_filter :login_required, :except => [:index, :new, :create]
  def index
    @pictures = Picture.all
  end
  def show
    @picture = Picture.find_by(id: params[:id])
    @user = User.find_by(id: @picture.user_id)
    #     @notes = Note.find_by(id: @notes.picture_id)
  end
  def new
  end
  def create
    @picture = Picture.new
    @picture.img_url = params[:img_url]
    @picture.name = params[:name]
    @picture.user_id = params[:user_id]
    if @picture.save
      redirect_to "/pictures/#{ @picture.id }"
    else
      render 'new'
    end
  end
  def edit
    @picture = Picture.find_by(id: params[:id])
  end
  def update
    @picture = Picture.find_by(id: params[:id])
    @picture.img_url = params[:img_url]
    @picture.name = params[:name]
    @picture.user_id = params[:user_id]
    if @picture.save
      redirect_to "/pictures/#{ @picture.id }"
    else
      render 'edit'
    end
  end
  def destroy
    @picture = Picture.find_by(id: params[:id])
    @picture.destroy
    redirect_to "/pictures"
  end
end