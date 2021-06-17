class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }

    validate :clickbait_y

    def clickbait_y
        # byebug
        arry_of_stuff = ["Won't Believe", "Secret", "Top", "Guess"]
        results = false

        if title != nil
            arry_of_stuff.each do |string|
                if title.include?(string)
                    results = true
                end
            end
        
        
            if results == false
                errors.add(:title, "Not clickbait-y")
            end
        end
        
    end

end
