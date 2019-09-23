class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :title, inclusion: { in: %w(Wont-Believe Secret Top Guess)}

    # Finally, add a custom validator to Post that ensures the title is sufficiently clickbait-y. If the title does not contain 
    # "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should return false.
end
