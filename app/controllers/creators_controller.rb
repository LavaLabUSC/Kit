class CreatorsController < ApplicationController
  def show
    @creator = Creator.find_by(:slug => params[:slug])
    @videos = Video.where(:creator => @creator)
  end
end
