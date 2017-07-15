require "rails_helper"

RSpec.describe Playlist, type: :model do
  context "has_and_belongs_to_many" do
    it { should have_and_belong_to_many(:songs) }
  end
end
