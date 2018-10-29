class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birthDate
      t.string :carreer
      t.timestamps
    end
  end
end
