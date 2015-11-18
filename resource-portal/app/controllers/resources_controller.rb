class ResourcesController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token, :only => :create
  

# Should params.require include :category and others?
def resource_params
    params.require(:resource).permit(:title, :category, :address, :alternative_address, 
    :phone_number, :alternative_phone_number, :website, :fax_number,:contact_email,
    :agency_email, :description_of_service)
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
    @temp = Category.where(category_name: @category)
   # @resources = @temp.resources
   @resources = Resource.where(category_name: @category)
 #  @resources = Resource.joins(:categories).find(@temp)
    
    #@resources = Resource.includes(:category).all
    #@resources = Resource.joins(:resource_category).where(category_name: @category )
   # @Show = show.find(params[:id])
   #Order.joins(:products).where(:products => {name: 'Milk (1 liter)'})
end

# This will be the method that the submission path goes to ( reousrce_new)
# If we are here, the info has been submitted in a hash and is ready to be 
# added to the model. 
def new
   # submit_info = params[:submit_info]
   @resource = Resource.new
end

def edit
end

def create
    # Receives information from the view, passes it and stores it in the model.
   Resource.create!(resource_params)
   flash[:notice] = "#{@title} was successfully submitted."
   redirect_to resources_path
end

def update
end

def destroy
end

def admin
    
end

end
