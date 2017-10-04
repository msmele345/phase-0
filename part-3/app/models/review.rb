class Review < ActiveRecord::Base
   belongs_to :user
   belongs_to :resturant


   validates :description, presence: true, length: {maximum: 255}

end

 # :foreign_key => :reviewer_id, :class_name => 'User'
