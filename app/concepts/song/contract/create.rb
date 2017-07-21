module  Song::Contract
  class Create < Reform::Form
    property :title
    property :artist
    property :file

    validates :title, :artist, :file, presence: true
    validates :file, file_size: { less_than: 10.megabytes },
    file_content_type: { allow: ["audio/mpeg", "audio/mpeg3", "audio/midi"] }
  end
end
