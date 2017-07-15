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

FactoryGirl.define do
  factory :user do
    email "MyString"
    nick_name "MyString"
    role 1
  end
end
