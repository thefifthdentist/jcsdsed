class CreateTeacherCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_cohorts do |t|
      t.integer :Teacher_ID
      t.integer :Cohort_ID

      t.timestamps
    end
  end
end
