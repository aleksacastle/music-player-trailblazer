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

class User < ApplicationRecord
  has_many :playlists
  has_many :songs, through: :playlists

  enum role: %i[user artist admin]

  serialize :auth_meta_data
end
