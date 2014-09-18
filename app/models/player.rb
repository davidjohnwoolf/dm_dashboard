class Player < ActiveRecord::Base
  belongs_to :user
  #validations
  has_many :notes, as: :notable
  validates :name, :description, presence: true
  accepts_nested_attributes_for :notes, :allow_destroy => true
end
