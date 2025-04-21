class List < ApplicationRecord
  belongs_to :user
  belongs_to :joke

  enum list_type: { favorites: 'favorites', read_later: 'read_later', custom: 'custom' }

  validates :user_id, uniqueness: { scope: [:joke_id, :list_type], message: "ya ha agregado este chiste a esta lista" }
  validates :list_type, presence: true
end