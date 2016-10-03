# Class  that binds the resource model to the resource view
#@author Albert Owusu-Asare , Blake Creasey, David Sanchez, Zhi Chen, Zoe Wolter
#@since 0.0.1
class ResourcesController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token, only: :create

  before_action :set_resource, only: [:show, :edit, :update, :destroy, :modify_status]
  before_action :authenticate_user!, except: [:show, :index, :new, :create]

  # Display a list of all resources
  def index
    @resources = Resource.all
  end

  # Display an individual resource
  def show
  end

  # Creates a new resource
  def new
    @resource = Resource.new
  end

  # Gets the resource to edit by the id specified in params
  def edit
  end

  #Currently unavailable functionality, cannot delete resources
  def destroy
  end

  # Creates a new resource according to the parameters specified in params
  # Flashes on the view a note to indicate success of resouces creation
  #@return [void] but redirects to the ingidex.
  def create
    # Set instance var so :new renders properly if validation fails
    @resource = Resource.new(resource_params)

    # Only admins can be signed in users at this point
    # If a user is signed in, then they are an admin
    @resource.status = "Approved" if user_signed_in?

    if @resource.save
      flash[:success] = "#{@resource.name} was successfully submitted."

      if user_signed_in?
        redirect_to admin_path
      else
        redirect_to :root
      end
    else
      render :new
    end
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

  def destroy
    @resource.destroy

    flash[:success] = "Destroyed #{@resource.name}"
    redirect_to admin_path
  end

  # Changes the status of a particular resources according to the decision param
  def modify_status
    @resource.status = params[:decision]
    @resource.save!

#Queries the resources table by category name and status. Note that the resources are 
#   always queried in alphabetical order
#@param [category_name] the category to query resources on
#@param [resource_status] the status to query resources on
private
def query_resources(category_name,resource_status)
   return  Resource.joins(:category).where(categories: { category_name: category_name }).where(status: resource_status).order(:title)
end

  private
  def set_resource
    @resource = Resource.find params[:id]
  end

  # Fetches all the parameters that are used for resource creation and editing
  #@return [void]
  def resource_params
    params.require(:resource)
          .permit(:name, :address, :alternative_address,
                  :phone_number, :alternative_phone_number, :website,
                  :fax_number, :contact_email, :agency_email,
                  :description_of_service)
          .merge({ category_ids: params[:category_ids] })
  end
end
