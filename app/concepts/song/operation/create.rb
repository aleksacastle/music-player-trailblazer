class Song::Create < Trailblazer::Operation
  step Model(Song, :new)
  step Policy::Pundit(SongPolicy, :create?)
  step Contract::Build(constant: Song::Contract::Create)
  step Contract::Validate()
  step Contract::Persist()
end
