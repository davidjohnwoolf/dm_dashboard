class Player < ActiveRecord::Base
  belongs_to :user
  #validations
  has_many :notes, as: :notable

  accepts_nested_attributes_for :notes, :allow_destroy => true
end
