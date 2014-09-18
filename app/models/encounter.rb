class Encounter < ActiveRecord::Base
  belongs_to :adventure
  validates :title, :description, :completed, presence: true
end
