class CreateTeachersCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers_cohorts do |t|
      t.integer :Teacher_ID
      t.integer :Student_ID

      t.timestamps
    end
  end
end
