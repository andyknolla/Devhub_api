class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
    render json: @resources
  end

  def create
    @resource = Resource.create!(resource_params)
    json_response(@resource, :created)
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :description, :url, :rating, :free, :resource_type_id, :category_id)
  end

end


# {
# 		"title": "Title 0",
# 		"url": "Url 0",
# 		"rating": 5,
# 		"description": "Dirka dirka crash pad cold shut bi-pattern chains a tagline wall crack limestone aid.  Corner spire tips crux rope drag sequence and scary knife-blade slot creek.  Auto-block biner crystal anchor descent and equalette...dirka",
# 		"free": false,
# 		"category_id": 2,
# 		"resource_type_id": 2
# 	}
