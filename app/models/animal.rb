class Animal < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  
  validates :name, presence: true
  validates :anm_type, presence: true
  validates :catch_copy, presence: true
  validates :image, presence: true
  

  
end
