class Post < ApplicationRecord
     validates :title, presence: true
     validates :start, presence: true
     validates :end, presence: true

  
    
end
