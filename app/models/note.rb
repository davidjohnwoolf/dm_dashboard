class Note < ActiveRecord::Base
  belongs_to :notable, polymorphic: true
  validates :title, :description, presence: true
end
