class SearchController < ApplicationController

  def resources
    @resources = Resource.search(params[:q])#:match :word_start#, suggest :true

    # combine the results
    @results = @resources
    # may be necessary to remove duplicates
  end

end
