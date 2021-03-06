class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]
  before_action :authenticate_user!

  # GET /admin
  def admin
    @approved_resources = Hash.new
    @pending_resources = Hash.new

    @categories = Category.all

    @categories.each do |category|
      name = category.name
      @approved_resources[name] = category.resources.where(status: "Approved")
      @pending_resources[name] = category.resources.where(status: "Pending")
    end
  end

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params[:user]
  end
end
