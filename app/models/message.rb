class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :content, presence: true, unless: :image?

  class Message < ApplicationRecord
  mount_uploader :image, ImageUploader
  end
end
