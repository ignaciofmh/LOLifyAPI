class Joke < ApplicationRecord
  belongs_to :category
  belongs_to :user # Autor del chiste
  has_many :ranks
  has_many :lists
end