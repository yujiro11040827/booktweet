class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user
  has_many :comments

  validates :name, :author, :impressions, presence: true

  validates :genre_id, numericality: { other_than: 1 }
end
