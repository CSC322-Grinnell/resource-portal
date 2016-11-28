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

  # Creates a new resource according to the parameters specified in params
  # Flashes on the view a note to indicate success of resouces creation
  #@return [void] but redirects to the ingidex.
  def create
    # Set instance var so :new renders properly if validation fails
    @resource = Resource.new(resource_params)
    
    puts "TEST"
    puts resource_params
    

    # Only admins can be signed in users at this point
    # If a user is signed in, then they are an admin
    @resource.status = "Approved" if user_signed_in?

    if @resource.save
      flash[:success] = "#{@resource.name} was successfully submitted."
      redirect_to :root
    else
      render :new
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

    redirect_to admin_path
  end

  # Updates a resource according to the params. Redirects to the main admin page
  def update
    if @resource.update(resource_params)
      flash[:success] = "Resource updated"
      redirect_to admin_path
    else
      render :edit
    end
    @resource.save!
  end

  def favorite 
    @resource = Resource.find(params[:id])
    type = params[:type]
    if type == "favorite"
      # If favoriting a resource, adds to favorites list and notifies user
      begin
        current_user.favorites << @resource
        redirect_to :back, notice: "You favorited #{@resource.name}"
      rescue ActiveRecord::RecordInvalid => e # error catching for duplicate favorites
        e.record.errors.details
      end
    elsif type == "unfavorite"
      # If unfavoriting a resource, removes from favorites list and notifies user
      current_user.favorites.delete(@resource)
      redirect_to :back, notice: "Unfavorited #{@resource.name}"
    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end

  private
  def set_resource
    @resource = Resource.find params[:id]
  end

  # Fetches all the parameters that are used for resource creation and editing
  #@return [void]
  def resource_params
    parser = Gingerice::Parser.new
    parser.parse :description_of_service
    the_params = params.require(:resource)
                        .permit(:name, :address, :alternative_address,
                                :phone_number, :alternative_phone_number,
                                :website, :fax_number, :contact_email,
                                :agency_email, :description_of_service,
                                :name_of_submitter, :category_ids => [],
                                :tag_list => [])

    # if category_ids is neither null nor empty
    #if !params[:resource][:category_ids].blank?
    #  the_params[:category_ids].merge!({ category_ids: params[:resource][:category_ids] })
    #end

    return the_params
  end
  
end
