class LogosController < ApplicationController
  before_action :load_logo, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_designer!, :except => [:show, :index]

  def index
    @logos = Logo.all.order("created_at DESC")
  end

  def new
    @post = Post.find(params[:post_id])
    @logo = Logo.new
  end

  def edit
  end

  def show
  end

  def create
    @post = Post.find(params[:post_id])
    @logo = @post.logos.new(logo_params)
    @logo.designer = current_designer

    if @logo.save
      redirect_to @post, notice: 'Logo was successfully created.'
    else
      render :new
    end
  end

  def update
    if load_logo.update(logo_params)
      redirect_to load_logo, notice: 'Logo was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    load_logo.destroy

    redirect_to logos_url, notice: 'Logo was successfully destroyed.'
  end

  private

  def load_logo
    @logo ||= Logo.find(params[:id])
    @post ||= Post.find(params[:post_id])
  end

  def logo_params
    params.require(:logo).permit(:designer_id, :title, :new_logo, :email, :name).merge(post: @post)
  end
end
