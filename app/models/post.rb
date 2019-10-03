class Post < ActiveRecord::Base
  validates :content, length: {minimum: 250 }
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :is_clickbait?

  CLICK_BAIT_PATTERNS = [ /Won't Believe/i,/Secret/i,/Top [0-9]*/i, /Guess/i]

  def is_clickbait?
    if CLICK_BAIT_PATTERNS.none? do |p|
      p.match title
    end
    errors.add(:title, "must be clickbait")
    end
  end

end
