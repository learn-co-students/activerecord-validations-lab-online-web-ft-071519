class Post < ActiveRecord::Base
  validates :title, presence: true
  validate :is_clickbait?
  validates :content, length: {minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  #validates_with TitleValidator


  # Use this instead of the other way because only the post class uses this validation
  def is_clickbait?
    unless title == nil || title.match?(/Won't Believe|Secret|Top [0-9]|Guess/i)
      errors.add(:title, "Must be clickbait")
    end
  end
end
