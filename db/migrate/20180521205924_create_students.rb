class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :First_Name
      t.string :Last_Name
      t.Integer :Age
      t.string :Education

      t.timestamps
    end
  end
end
