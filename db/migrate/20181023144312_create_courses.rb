class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.boolean :status
      t.float :price
      t.references :topic, foreign_key: true
      t.references :tutor, foreign_key: true

      t.timestamps
    end
  end
end
