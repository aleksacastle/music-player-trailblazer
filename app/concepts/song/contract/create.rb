module  Song::Contract
  class Create < Reform::Form
    property :title
    property :artist
    property :file

    validates :title, :artist, :file, presence: true
    validates :file, file_size: { less_than: 100.megabytes,
                                  message: "not more than %{size} are allowed"},
    file_content_type: { allow: ["audio/mpeg", "audio/mpeg3", "audio/midi", "audio/mp3"],
                                  message: "only %{types} are allowed"}
  end
end
