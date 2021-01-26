class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :name, :author, :impressions, presence: true

  validates :genre_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ""
      Tweet.where('name LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
