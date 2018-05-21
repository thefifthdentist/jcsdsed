class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :First_Name
      t.string :Last_Name
      t.Integer :Age
      t.string :Education
      t.string :Salary

      t.timestamps
    end
  end
end
