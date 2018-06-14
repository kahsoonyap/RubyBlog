class Comment < ApplicationRecord

  belongs_to :article, dependent: :destroy

  validates :title,
    presence: true,
    length: {
      minimum: 3
    }

  validates :body,
    presence: true,
    length: {
      minimum: 3
    }

end
