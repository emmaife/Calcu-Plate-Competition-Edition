class AddWorkoutDateToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :WODate, :datetime
  end
end
