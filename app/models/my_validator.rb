
# class MyTitleValidator < ActiveModel::Validator

#     #clickbait_phrases = ["Won't Believe", "Secret", "Top [number]", "Guess"]
#     def validate(record)
#       unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top") || record.title.include?("Guess") || record.title == nil
#         record.errors[:name] << 'Post title needs to include a clickbait phrase.'
#       end
#     end
#   end

class MyValidator < ActiveModel::Validator
  def validate(record)
      unless record.title == nil || record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top") || record.title.include?("Guess")
      record.errors[:name] << false
    end
  end
end