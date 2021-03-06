class SearchController < ApplicationController

  def resources 
    @resources = Resource.search(params[:q])#:match :word_start#, suggest :true
    @categories = Category.search(params[:q])#:match :word_start#, suggest :true
    
    # combine the results
    @results = @resources + @categories
    # may be necessary to remove duplicates
  end 

end
