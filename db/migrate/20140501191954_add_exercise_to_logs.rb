class AddExerciseToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :exercise, :string
  end
end
