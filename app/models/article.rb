class Article < ApplicationRecord

    validates :title, presence:{ message:"Title Cannot be Empty" }
    validates :body, presence:true,length: { minimum: 10 }

    belongs_to :user
    has_many :comments,dependent: :destroy
end
