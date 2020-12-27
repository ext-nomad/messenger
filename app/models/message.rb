class Message < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 50 }

  scope :latest, -> { last(15) }
end
