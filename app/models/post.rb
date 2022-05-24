class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, { :length => { minimum: 250 } }
    validates :summary, { :length => { maximum: 250 } }
    validates :category, inclusion: { :in => ["Fiction", "Non-Fiction"] }
    # validate :clickbaity
    

    # def clickbaity
    #         errors.add(:title, "Must be more clickbait") unless self.title.include? "Won't Believe" or self.title.include? "Secret" or self.title.include? "Top" or self.title.include? "Guess"
    # end

end
