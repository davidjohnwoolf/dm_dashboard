class Adventure < ActiveRecord::Base
  belongs_to :user
  #validation
  has_many :encounters
  has_many :notes, as: :notable

  validates :title, :description, :completed, presence: true

  accepts_nested_attributes_for :encounters, :allow_destroy => true
  accepts_nested_attributes_for :notes, :allow_destroy => true
end
