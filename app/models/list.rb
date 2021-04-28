class List < ApplicationRecord
  validates :name, uniqueness: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks
  has_one_attached :photo
end
