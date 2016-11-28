class CreatorsController < ApplicationController
  require 'json'
  require 'open-uri'

  def show
    @creator = Creator.find_by(:slug => params[:slug])
    @videos = Video.where(:creator => @creator)
    @tags = @creator.tags

    @sub_exists = Subscription.exists?(:user => current_user, :creator => @creator)
    
    # Get last 4 instagram posts and display it on the page
    ig_data = JSON.load(open('https://www.instagram.com/' + @creator.instagram + '/media/'))
    ig_data[:items]

    @instagram = []
    for i in 1..4
      @instagram.push(ig_data['items'][i]['images']['standard_resolution']['url'])
    end

    # Get last 3 tweets
    tweets = $twitter.user_timeline(@creator.twitter)
    @tweets = tweets[0..4]
  end

  def subscribe
    # Check if subscription exists
    creator = Creator.find_by(:slug => params[:slug])

    if Subscription.exists?(:user => current_user, :creator => creator)
      sub = Subscription.find_by(:user => current_user)
      Subscription.delete(sub)

      redirect_to '/creator/' + creator.slug, notice: 'Unsubscribed'
    else
      Subscription.create(:user => current_user, :creator => creator)

      redirect_to '/creator/' + creator.slug, notice: 'Subscribed'
    end
  end
end
