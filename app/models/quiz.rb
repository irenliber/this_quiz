class Quiz < ApplicationRecord
  has_many :questions

  validates :title, :description, presence: true
end
