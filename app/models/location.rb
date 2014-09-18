class Location < ActiveRecord::Base
  belongs_to :user
  has_many :notes, as: :notable

  validates :title, :description, presence: true

  accepts_nested_attributes_for :notes, :allow_destroy => true
end
