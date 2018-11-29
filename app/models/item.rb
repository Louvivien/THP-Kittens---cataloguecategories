require 'open-uri'
class Item < ApplicationRecord
  validates :price, presence: true, numericality: {greater_than: 0}, on: :create
  validates :title, presence: true, format: {with: /\A[a-zA-Z0-9+\s]+\z/, message: "Only alpha-numeric characters"}, length: { in: 3..30 }, on: :create
  validates :description, presence: true, length: {in: 10..500, message: "Between 10 and 500 characters"}, on: :create

  has_one_attached :image
  has_many :cart_items, dependent: :destroy
  belongs_to :category
end
