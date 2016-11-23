class CreatorsController < ApplicationController
  require 'json'
  require 'open-uri'

  def show
    @creator = Creator.find_by(:slug => params[:slug])
    @videos = Video.where(:creator => @creator)

    # Get last 4 instagram posts and display it on the page
    ig_data = JSON.load(open('https://www.instagram.com/' + @creator.instagram + '/media/'))
    ig_data[:items]

    @instagram = []
    for i in 1..4
      @instagram.push(ig_data['items'][i]['images']['standard_resolution']['url'])
    end
  end
end
