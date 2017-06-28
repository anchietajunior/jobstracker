class Task < ApplicationRecord
  belongs_to :user
  enum importance: [:high, :normal, :low]
  enum status: [:todo, :doing, :paused, :done]

  validates :title, presence: true

end
