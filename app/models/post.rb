class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    # validates :category, inclusion: { in: ['fiction' 'non-fiction'] }

    # validates :clickbait-y

    # def clickbait-y
    #     if :title.present?
    #         inclusion: { in: %w(fiction non-fiction) }
    #     end
    # end

end
