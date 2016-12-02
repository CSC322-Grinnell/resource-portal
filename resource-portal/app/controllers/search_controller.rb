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
     if params[:search].present?
        @tags = Tag.search(params[:search], page: params[:page], per_page: 15 )
    else
        @tags = Tag.all
    end
    # combine the results
    @results = @tags
    # may be necessary to remove duplicates
  end 

end
