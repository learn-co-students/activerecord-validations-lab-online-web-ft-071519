class Post < ActiveRecord::Base
   validates :title, presence: true
   validates :content, length: { minimum: 250 }
   validates :summary, length: { maximum: 250 }
   validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
   include ActiveModel::Validations
  validates_with MyValidator
end


class MyValidator < ActiveModel::Validator
  def validate(title)
    unless title.name.include? "Won't Believe" | title.name.include? "Secret" | title.name.include? "Top " | title.name.include? "Guess"
      title.errors[:name] << 'Need a name starting with X please!'
    end
  end
end