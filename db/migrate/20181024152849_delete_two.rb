class DeleteTwo < ActiveRecord::Migration[5.1]
  def change
    drop_table :students_courses

  end
end
