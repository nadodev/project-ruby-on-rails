class Ticket < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :descricao, presence: true
  
end
