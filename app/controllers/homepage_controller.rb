class HomepageController < ApplicationController
  def index
    @spaces = Space.all.limit(9)
  end
end
