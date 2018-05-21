class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :Title
      t.integer :Hours

      t.timestamps
    end
  end
end
