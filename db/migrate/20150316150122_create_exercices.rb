class CreateExercices < ActiveRecord::Migration
  def change
    create_table :exercices do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.references :workout, index: true

      t.timestamps null: false
    end
    add_foreign_key :exercices, :workouts
  end
end
