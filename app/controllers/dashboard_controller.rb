class DashboardController < ApplicationController
  def discover
    if current_user
      render 'discover'
    else
      redirect_to '/login', notice: 'Login to discover new content'
    end
  end
end
