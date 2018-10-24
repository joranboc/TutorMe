class Repair < ActiveRecord::Migration[5.1]
  def change
    drop_table :courses_students
    create_table :courses_students,id: false do |t|
      t.belongs_to :student, index: true
      t.belongs_to :course, index: true
    end
  end
end
