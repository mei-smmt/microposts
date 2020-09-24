class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 20 }
  
  has_many :favorites, dependent: :destroy

end
