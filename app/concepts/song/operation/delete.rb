class Song::Delete < Trailblazer::Operation
  step Model(Song, :find_by)
  step Policy::Pundit(SongPolicy, :destroy?)
  step :destroy!

  private

    def destroy!(_operation, model:, **)
      model.destroy
    end
end
