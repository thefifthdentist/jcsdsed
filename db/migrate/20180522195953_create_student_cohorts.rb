class CreateStudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_cohorts do |t|
      t.integer :Student_ID
      t.integer :Cohort_ID

      t.timestamps
    end
  end
end
