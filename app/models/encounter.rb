class Encounter < ActiveRecord::Base
  belongs_to :adventure
  validates :title, :description, presence: true
end
