class CodeResourceController < ApplicationController
  def index
    @sites = Site.all
  end
end
