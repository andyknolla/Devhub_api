class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :update, :destroy]

  def index
    @resources = Resource.all
    render json: @resources
  end

  def create
    @resource = Resource.create!(resource_params)
    json_response(@resource, :created)
  end

  def show
    render json: @resource
  end

  def update
    @resource.update(resource_params)
    json_response(@resource)
  end

  def destroy
    @resource.destroy
    head :no_content
  end

  private

  def set_resource
    @resource = Resource.find(params[:id])
  end

  def resource_params
    params.require(:resource).permit(:title, :description, :url, :rating, :free, :resource_type_id, :category_id)
  end

end
