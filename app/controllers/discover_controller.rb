class DiscoverController < ApplicationController
  def index
    if current_user
      render 'index'
    else
      redirect_to '/login', notice: 'Login to discover new content'
    end
  end

  def recommended

  end
end
