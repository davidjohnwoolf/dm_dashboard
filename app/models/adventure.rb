class Adventure < ActiveRecord::Base
  belongs_to :user
  #validation
  has_many :encounters

  accepts_nested_attributes_for :encounters, :allow_destroy => true
end
