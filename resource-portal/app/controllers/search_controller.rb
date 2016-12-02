class SearchController < ApplicationController

  def resources 
    @resources = Resource.search(params[:q])#:match :word_start#, suggest :true

    # combine the results
    @results = @resources #+ @categories
    # may be necessary to remove duplicates
  end 
  
  def categories
    @categories = Category.search(params[:q])#:match :word_start#, suggest :true

    # combine the results
    @results = @categories
    # may be necessary to remove duplicates
  end 
  
  def tags
    @tags = Tag.search(params[:q])#:match :word_start#, suggest :true

    # combine the results
    @results = @tags
    # may be necessary to remove duplicates
  end 

end
