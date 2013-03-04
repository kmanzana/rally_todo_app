# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  complete   :boolean          default(FALSE)
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ActiveRecord::Base
  attr_accessible :name

  belongs_to :list

  validates :name, presence: true
  validates :list_id, presence: true
end
