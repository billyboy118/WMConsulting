class WebSiteController < ApplicationController
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
      redirect_to web_site_index_path, notice: 'Entry Edited'
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
      redirect_to web_site_index_path, notice: 'Entry Saved'
    else
      render :new
    end
  end

  def show
    # destroy
  end

  private

  def site_params
    params.require(:site).permit(:topic, :language, :description, :address, :option)
  end

end
