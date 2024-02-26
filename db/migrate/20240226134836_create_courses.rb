class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :instructor_id
      t.decimal :duration, precision: 10, scale: 2
      t.decimal :price, precision: 10, scale: 2
      t.date :start_date
      t.date :end_date
      t.string :course_type

      t.timestamps
    end
  end
end
