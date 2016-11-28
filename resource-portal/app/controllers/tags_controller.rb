class TagsController < ApplicationController

    def index
        @tags = ActsAsTaggableOn::Tag.all
    end
    
    def show 
        @tag = ActsAsTaggableOn::Tag.find(params[:id])
        @resources = Resource.tagged_with(@tag)
    end
end
