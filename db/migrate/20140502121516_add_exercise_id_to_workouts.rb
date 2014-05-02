class AddExerciseIdToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :exercise_id, :integer
  end
end
