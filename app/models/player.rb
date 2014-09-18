class Player < ActiveRecord::Base
  belongs_to :user
  #validations
  has_many :notes, as: :notable
end
