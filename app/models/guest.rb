class Guest < ApplicationRecord
  belongs_to :party

  validates :first_name, presence: true
  validates :last_name, presence: true
end
