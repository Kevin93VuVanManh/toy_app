class Micropost < ApplicationRecord
  #Dua ra nhung pham vi cho phep VD nhu sap xep du lieu lay ra theo trinh tu cao thap
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
# refinements
#cac buoc thuc hien
#1. tao model
#2. sua database
#3. tao validates va cac ham phu thuoc