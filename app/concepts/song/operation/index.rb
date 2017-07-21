class Song::Index < Trailblazer::Operation
  step :model!

  def model!(options, current_user:, **)
    operation["model"] = current_user.songs
  end
end
