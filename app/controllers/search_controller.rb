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

      if tag
        tags.push(tag.id)
      end
    end

    # Return videos (and their products) matching tags
    vid_tagging = Tagging.where(:tag => tags, :taggable_type => 'Video')
    videos = []
    products = []

    vid_tagging.each do |v|
      videos.push(v.taggable)
      products.concat(Product.where(:video => v.taggable))
    end

    @videos = videos.uniq[0..3]
    @products = products.uniq[0..3]

    # Return creators matching tags
    creator_tagging = Tagging.where(:tag => tags, :taggable_type => 'Creator')
    creators = []

    creator_tagging.each do |c|
      creators.push(c.taggable)
    end

    @creators = creators.uniq[0..3]

    @query = parsed_query.join(' ')
    @link_thru = params[:tag]

    render 'results'
  end

  def videos
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

    @query = parsed_query.join(' ')

    render 'videos'
  end

  def creators
    parsed_query = params[:tag].split('+')

    tags = []

    parsed_query.each do |t|
      tag = Tag.find_by(:name => t)
      tags.push(tag.id)
    end

    # Return creators matching tags
    creator_tagging = Tagging.where(:tag => tags, :taggable_type => 'Creator')
    creators = []

    creator_tagging.each do |c|
      creators.push(c.taggable)
    end

    @creators = creators.uniq

    @query = parsed_query.join(' ')

    render 'creators'
  end

  def products
    parsed_query = params[:tag].split('+')

    tags = []

    parsed_query.each do |t|
      tag = Tag.find_by(:name => t)
      tags.push(tag.id)
    end

    # Return videos (and their products) matching tags
    vid_tagging = Tagging.where(:tag => tags, :taggable_type => 'Video')
    products = []

    vid_tagging.each do |v|
      products.concat(Product.where(:video => v.taggable))
    end

    @products = products.uniq

    @query = parsed_query.join(' ')

    render 'products'
  end
end
