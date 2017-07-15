class Album::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Album, :new)
    step Contract::Build(constant: Album::Contract::Create)
  end

  step Nested(Present)
  step Contract::Validate(key: :album)
  step Contract::Persist()
  step :notify!

  def notify!(options, model:, **)
    options["result.notify"] = Rails.logger.info("New album #{model.title}.")
  end
end
