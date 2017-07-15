class Album::Index < Trailblazer::Operation
  step :model!

  def model!(options, *)
    options["model"] = ::Album.all
  end
end
