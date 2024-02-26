class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum role: [:student, :instructor, :admin]

  after_initialize :set_default_role, if: :new_record?

  scope :instructors, -> { where(:role => "instructor")}

  has_many :subscriptions, dependent: :destroy
  has_many :courses, through: :subscriptions, dependent: :destroy
  has_many :instructor_courses, class_name: "Course", foreign_key: :instructor_id, dependent: :destroy

  private

  def set_default_role
    self.role ||= :student
  end
end
