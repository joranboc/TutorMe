class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.string :name
      t.text :skill
      t.string :career
      t.date :birthDate
      t.timestamps
    end
  end
end
