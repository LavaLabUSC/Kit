class SearchController < ApplicationController
  def search
    query = params[:tag]
    tags = query.strip.split(/\s+/)

    redirect_to '/search/' + tags.join('+')
  end

  def results
    parsed_query = params[:tag].split('+')

    tags = []

    parsed_query.each do |t|
      tag = Tag.find_by(:name => t)
      tags.push(tag.id)
    end

    # Return videos (and their products) matching tags
    vid_tagging = Tagging.where(:tag => tags, :taggable_type => 'Video')
    videos = []
    products = []

    vid_tagging.each do |v|
      videos.push(v.taggable)
      products.concat(Product.where(:video => v.taggable))
    end

    @videos = videos.uniq
    @products = products.uniq

    # Return creators matching tags
    creator_tagging = Tagging.where(:tag => tags, :taggable_type => 'Creator')
    creators = []

    creator_tagging.each do |c|
      creators.push(c.taggable)
    end

    @creators = creators.uniq


    @query = parsed_query.join(' ')

    render 'results'
  end
end
