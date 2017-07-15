require "reform"
require "reform/form/dry"

module Album::Contract
  class Create < Reform::Form
    include Dry

    property :title
    # property :file_cover

    validation do
      required(:title).filled
      # required(:file_cover).filled
    end
  end
end
