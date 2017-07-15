class SongsController < ApplicationRecord
  def new
    Song.new
  end

  def create
    Song.new(song_params)
  end

  private

    def song_params
      params.require(:song).permit(:title, :artist, :file)
    end
end
