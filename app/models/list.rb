# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class List < ActiveRecord::Base
  attr_accessible :name

  has_many :items, dependent: :destroy

  validates :name, presence: true,uniqueness: { case_sensitive: false }

end
