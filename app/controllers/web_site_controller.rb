class WebSiteController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def index
    @sites = Site.all
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    redirect_to web_site_index_path, notice: 'Entry Deleted'
  end

  def update
    @site = Site.find(params[:id])

    if @site.update(site_params)
      if @site.option == 'web'
        redirect_to web_site_index_path, notice: 'Entry Saved'
      else
        redirect_to code_resource_index_path, notice: 'Entry Saved'
      end
    else
      render :edit
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)

    if @site.save
      if @site.option == 'web'
        redirect_to web_site_index_path, notice: 'Entry Saved'
      else
        redirect_to code_resource_index_path, notice: 'Entry Saved'
      end
    else
      render :new
    end
  end

  private

  def site_params
    params.require(:site).permit(:topic, :language, :description, :address, :option, :example)
  end
end
