# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  nick_name  :string
#  role       :integer          default("user")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe User, type: :model do
  it { is_expected.to define_enum_for(:role).with(%i[user artist admin]) }
  it { is_expected.to have_db_column(:email) }
  it { is_expected.to have_db_column(:nick_name) }
  it { is_expected.to have_db_column(:role) }
  it { is_expected.to have_many(:playlists) }
  # it { is_expected.to have_many(:songs) }
end
