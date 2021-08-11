class Post < ApplicationRecord
    validates :title, presence:true
    validates :content, presence:true
    validates :title, uniqueness:true, length: { minimum: 10 }
end
