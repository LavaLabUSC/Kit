class SubscriptionsController < ApplicationController
  def show
    if current_user
      @creators = current_user.creators

      @videos = []

      @creators.each do |c| 
        c.videos.each do |v|
          @videos.push(v)
        end
      end
    else
      redirect_to '/login', notice: 'Please login to access that page'
    end
  end
end
