# class TitleValidator < ActiveModel::Validator
#   def validate(record)
#     unless record.title == nil || record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top /[0-9]/") || record.title.include?("Guess")
#       record.errors[:title] << 'Not enough clickbait.'
#     end
#   end
# end
