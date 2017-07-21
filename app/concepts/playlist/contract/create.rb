module Playlist::Contract
  class Create < Reform::Form
    property :title
    property :file
  end
end
