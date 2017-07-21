class Playlist::Create < Trailblazer::Operation
  step Model(Playlist, :new)
  step :assign_current_user!
  step Contract::Build( constant: PlaylistContract)
  step Contract::Validate()
  failure :validation_error!
  step Contract::Persist()

  def validation_error!(options)
  end

  def assign_current_user!(options)
    options["model"].created_by =
      options["current_user"]
  end
end
