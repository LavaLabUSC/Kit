class StaticPagesController < ApplicationController
  def home
    if current_user
      redirect_to '/discover'
    end
  end
end
