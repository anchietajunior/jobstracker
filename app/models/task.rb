class Task < ApplicationRecord
  belongs_to :user
  enum importance: [:high, :normal, :low]
  enum status: [:todo, :doing, :done]

  validates :title, presence: true

  scope :for_today, -> { where(deadline: Date.today).order(:importance) }
end
