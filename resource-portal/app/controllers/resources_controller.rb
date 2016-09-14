#Class  that binds the resource model to the resource view
#@author Albert Owusu-Asare , Blake Creasy, David Sanchez, Zhi Chen, Zoe Wolter
#@since 0.0.1
class ResourcesController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token, :only => :create
  before_action :authenticate_user!, :except => [:show, :index,:new,:create]
  
#Fetches all the parameters that are used for resource creation and editing
#@return [void]
def resource_params
    params.require(:resource).permit(:category_name, :title, :address, :alternative_address, 
    :phone_number, :alternative_phone_number, :website, :fax_number, :contact_email,
    :agency_email, :description_of_service)
end


def index
    @categories = Category.get_categories
end

#Gets all the resources for a particular category
#@return [void]
def show
    category_id = params[:id] #note that categorynames are used as identifiers
    @category = Category.find(category_id)
    @resources = query_resources(@category.category_name,"Approved")
end

#Creates a new resource
def new
   @resource = Resource.new
end

#Gets a new resource by the id specified in params
def edit
    @resource = Resource.find(params[:id])
end

#Creates a new resource according to the parameters specified in params
#Flashes on the view a note to indicate success of resouces creation
#@return [void] but redirects to the index.
def create
     temp = Resource.create!(resource_params)
     # the easy way
     temp.category_ids = params[:category_ids] # [4, 9, 10]
     flash[:success] = "#{resource_params[:title]} was successfully submitted."
     temp.save!
     redirect_to resources_path
end

#Currently unavailable functionality, cannot delete resources
def destroy
end


#Queries resources Approved/Pending and stores resulting variables that can be
#stored and accessed in the admin view
def admin
    @approved_resources = Hash.new
    @pending_resources = Hash.new
    category_names = Category.get_category_names
    category_names.each do |name|
        key = name
        if key =="Food and Groceries" #TODO : Fix Hack for Food and Groceries. Has to do with Id in Admin views I think
            key = "Food"
        end  
        @approved_resources[key] = query_resources(name,"Approved")
        @pending_resources[key] = query_resources(name,"Pending")
    end
end

#Changes the status of a particular resources according to the decision param
def modify_status
    resource = Resource.find(params[:id])
     resource.status = params[:decision]
    resource.save!
   redirect_to admin_path
end

#Updates a resource according to the prams. Redirects to the main admin page
def update
    @resource = Resource.find(params[:id])
    if @resource.update_attributes(resource_params)
        flash[:success] = "Resource updated"
        redirect_to admin_path
    end
    @resource.save!
end

#Queries the resources table by category name and status. Note that the resources are 
#   always queried in alphabetical order
#@param [category_name] the category to query resources on
#@param [resource_status] the status to query resources on
private
def query_resources(category_name,resource_status)
   return  Resource.joins(:category).where(categories: { category_name: category_name }).where(status: resource_status).order(:title)
end


end
