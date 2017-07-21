class Song::Update < Trailblazer::Operation
  step Model(Song, :new)
  step Policy::Pundit(SongPolicy, :update?)
  step Contract::Build(constant: Song::Contract::Create)
  step Contract::Validate()
  step Contract::Persist()
end
