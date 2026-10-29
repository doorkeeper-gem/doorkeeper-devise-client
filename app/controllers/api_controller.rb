class ApiController < ApplicationController
  respond_to :json

  def explore
    @json = doorkeeper.get("api/v1/#{params[:api]}").parsed
    respond_with @json
  end
end
