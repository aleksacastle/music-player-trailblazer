class SongsController < ApplicationRecord
  def index
    run Song::Index
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    form Song::Create
  end

  def create
    run Song::Create do |op|
      flash[:notice] = "Created song: [#{op.model.title}] \"#{op.model.artist}\""

      return redirect_to song_path(op.model)
    end

    render action: :new
  end

  def update
    run Song::Update
  end

  def delete
    run Song::Delete
  end
end
