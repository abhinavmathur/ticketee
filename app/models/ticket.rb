class Ticket < ActiveRecord::Base
  belongs_to :project, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}
  
end
