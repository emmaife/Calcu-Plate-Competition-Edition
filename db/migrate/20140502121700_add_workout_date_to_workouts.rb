class AddWorkoutDateToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :woDate, :datetime
  end
end
