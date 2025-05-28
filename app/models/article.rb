class Article < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

  # Custome validation
  validate :check_content_length, :cant_say_fuck

  has_many :comments, dependent: :destroy

  # checking content length
  def check_content_length
    if content.length > 1000
      errors.add(:content, "Content is too long")
    end
  end

  # checking for bad words
  def cant_say_fuck
    if content.downcase.include?("fuck")
      errors.add(:content, "can't say fuck")
    end

    # Using regular expressions
    if content =~ /fuck/i
      errors.add(:content, "can't say fuck")
    end
  end
end
