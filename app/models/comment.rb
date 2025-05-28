class Comment < ApplicationRecord
  belongs_to :article
  # belongs_to :user
  belongs_to :article, class_name: "Comment", optional: true
  has_many :replies, class_name: "Comment", foreign_key: "article_id", dependent: :destroy

  # For top-level comments (those without a parent)
  scope :top_level, -> { where(article_id: nil) }
end
