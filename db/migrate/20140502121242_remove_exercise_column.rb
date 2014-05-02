class RemoveExerciseColumn < ActiveRecord::Migration
  def change
    remove_column :workouts, :exercise, :string
  end
end
