class PlaylistsController < ApplicationController
  def new
  end

  def create
    run Playlist::Create do |op|
      flash[:notice] = "Created product: [#{op.model.title}]"

      return redirect_to playlist_path(op.model)
    end

    render action: :new
    # result = Playlist::Create.(
    #          params,
    #          "current_user" => Warden.get_user)
  end

  private
    def params
    end
end
