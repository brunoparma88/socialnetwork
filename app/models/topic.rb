# == Schema Information
#
# Table name: topics
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Topic < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_one_base64_attached :avatar
  scope :get_all, -> { limit(50) }
end
