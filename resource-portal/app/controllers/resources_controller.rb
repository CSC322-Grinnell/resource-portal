class ResourcesController < ApplicationController
  
def resource_params
    params[:resource]
end

def index
        # return the category model column names to the view
   # @categories = Resource.select(:category_name).map(&:category_name).uniq #get unique names
    #Category.uniq.pluck(:category_name)
end

#If you click on a category, this path is invoked to show the corresponding resources
#link_to?
def show
    @category = params[:id]
    @resources = Resource.where(category: @category)
   # @Show = show.find(params[:id])
end

# This will be the method that the submission path goes to ( reousrce_new)
# If we are here, the info has been submitted in a hash and is ready to be 
# added to the model. 
def new
    submit_info = params[:submit_info]
end

def edit
end

def create
   
end

def update
end

def destroy
end

end
