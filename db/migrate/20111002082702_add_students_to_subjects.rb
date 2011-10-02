class AddStudentsToSubjects < ActiveRecord::Migration
  def change
    change_table :subjects do |t|
      t.references :student
    end
  end
end
