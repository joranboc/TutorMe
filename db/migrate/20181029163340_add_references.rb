class AddReferences < ActiveRecord::Migration[5.1]
  def change
    add_reference :tutors, :user, foreign_key: true
    add_reference :students, :user, foreign_key: true


  end
end
