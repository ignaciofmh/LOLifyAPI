class Rank < ApplicationRecord
  belongs_to :user
  belongs_to :joke

  validates :user_id, uniqueness: { scope: :joke_id, message: "ya ha calificado este chiste" }
  validates :rank, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end