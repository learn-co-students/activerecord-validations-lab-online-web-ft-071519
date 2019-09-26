class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :non_clickbait

  def non_clickbait
    number = 0..9
    baiters = [/Won't Believe/i, /Secret/i, /Top [0-9]*/i, /Guess/i]
    if baiters.none? { |str| str.match title }
      errors.add(:title, "needs to include clickbait")
    end
  end
end
