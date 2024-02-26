class Course < ApplicationRecord
  belongs_to :instructor, class_name: "User", foreign_key: "instructor_id"
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions, dependent: :destroy
end
