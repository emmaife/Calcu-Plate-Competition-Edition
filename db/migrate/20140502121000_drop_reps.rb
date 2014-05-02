class DropReps < ActiveRecord::Migration
  def change
    drop_table :reps
  end
end
