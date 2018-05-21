class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :Name
      t.Datetime :Start_Date
      t.Datetime :End_Date
      t.string :Course_ID
      t.string :Student_ID

      t.timestamps
    end
  end
end
