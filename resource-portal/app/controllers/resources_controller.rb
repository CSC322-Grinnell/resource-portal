#Class  that binds the resource model to the resource view
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

  #Creates a new resource
  def new
    @resource = Resource.new
  end

  #Gets a new resource by the id specified in params
  def edit
  end

  #Creates a new resource according to the parameters specified in params
  #Flashes on the view a note to indicate success of resouces creation
  #@return [void] but redirects to the index.
  def create
    resource = Resource.create!(resource_params)

    flash[:success] = "#{resource.title} was successfully submitted."
    redirect_to resources_path
  end

  def destroy
    @resource.destroy

    flash[:success] = "Destroyed #{@resource.title}"
    redirect_to admin_path
  end

  #Changes the status of a particular resources according to the decision param
  def modify_status
    @resource.status = params[:decision]
    @resource.save!

    redirect_to admin_path
  end

  #Updates a resource according to the prams. Redirects to the main admin page
  def update
    if @resource.update_attributes(resource_params)
      flash[:success] = "Resource updated"
      redirect_to admin_path
    end
    @resource.save!
  end

  private
  def set_resource
    @resource = Resource.find params[:id]
  end

  #Fetches all the parameters that are used for resource creation and editing
  #@return [void]
  def resource_params
    params.require(:resource)
          .permit(:category_name, :title, :address, :alternative_address,
                  :phone_number, :alternative_phone_number, :website,
                  :fax_number, :contact_email, :agency_email,
                  :description_of_service)
          .merge({ category_ids: params[:category_ids] })
  end
end
