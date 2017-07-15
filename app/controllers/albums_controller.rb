class AlbumsController < ApplicationController
  def index
    run Album::Index
    render cell(Album::Cell::Index, result["model"])
  end

  def new
    run Album::Create::Present
    render cell(Album::Cell::New, @form)
  end

  def create
    # binding.pry
    run Album::Create do |result|
      redirect_to albums_path
    end

    render cell(Album::Cell::New, @form)
  end
end
