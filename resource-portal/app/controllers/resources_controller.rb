class ResourcesController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token, :only => :create
  before_action :authenticate_user!, :except => [:show, :index,:new,:create]
  

# Should params.require include :category and others?
# {:category => []} (http://stackoverflow.com/questions/22613096/user-selects-multiple-items-using-check-box-form-helper-posts-data-as-array?rq=1)
def resource_params
    params.require(:resource).permit(:category_name, :title, :address, :alternative_address, 
    :phone_number, :alternative_phone_number, :website, :fax_number, :contact_email,
    :agency_email, :description_of_service)
end

def index
    @categories = Category.get_categories
end


def show
    category_id = params[:id] #note that categorynames are used as identifiers
    @category = Category.find(category_id)
    @resources = Resource.joins(:category).where(categories: { category_name:@category.category_name }).where(status: "Approved").order(:title)
end


def new
   @resource = Resource.new
end

def edit
    @resource = Resource.find(params[:id])
end

def create
    # Receives information from the view, passes it and stores it in the model.
     #params[:category] = Category.create!(params[:category])
     #CategoryResource.create!(resource_id:  resource_id, category_id: form_category.id)
     temp = Resource.create!(resource_params)
     # the easy way
     temp.category_ids = params[:category_ids] # [4, 9, 10]
     flash[:success] = "#{resource_params[:title]} was successfully submitted."
     temp.save!
     redirect_to resources_path
end


def destroy
end

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

def modify_status
    resource = Resource.find(params[:id])
     resource.status = params[:decision]
    resource.save!
   redirect_to admin_path
end

def update
    @resource = Resource.find(params[:id])
    if @resource.update_attributes(resource_params)
        flash[:success] = "Resource updated"
        redirect_to admin_path
    end
    @resource.save!
end


private
def query_resources(name,resource_status)
   return  Resource.joins(:category).where(categories: { category_name: name }).where(status: resource_status).order(:title)
end

end
