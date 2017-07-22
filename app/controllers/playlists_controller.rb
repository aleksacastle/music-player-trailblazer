class PlaylistsController < ApplicationController
  def new
    # form Playlist::Create
  end

  def create
    # run Playlist::Create do |op|
    #   flash[:notice] = "Created playlist: [#{op.model.title}]"
    #
    #   # return redirect_to playlist_index_path(op.model)
    # end
    #
    # render action: :new
    result = Playlist::Create.(
             params,
             "current_user" => Warden.get_user)
  end

  private
    def params
    end
end
