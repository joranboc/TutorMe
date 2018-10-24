class Delete < ActiveRecord::Migration[5.1]
  def change
    create_table :courses_students, id: false do |t|
      t.belongs_to :student, index: true
      t.belongs_to :course, index: true
    end
  end
  def down
    drop_table :students_courses
  end
end
