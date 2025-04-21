class User < ApplicationRecord
  has_many :jokes # Chistes creados por el usuario
  has_many :ranks # Calificaciones dadas por el usuario
  has_many :lists # Listas/Items de lista del usuario

  validates :email, presence: true, uniqueness: true
  validates :nickname, uniqueness: true, allow_blank: true
end