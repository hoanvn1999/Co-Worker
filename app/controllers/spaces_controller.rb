class SpacesController < ApplicationController
  def index
    @spaces = Space.find_name(params[:nam]).find_address(params[:addr])
                   .paginate(page: params[:page],
                             per_page: Settings.per_page.default)
  end

  def show
    @space = Space.find_by id: params[:id]
  end
end
