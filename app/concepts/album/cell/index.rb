module Album::Cell
  class Index < Trailblazer::Cell
    include ActionView::RecordIdentifier
  end
end
