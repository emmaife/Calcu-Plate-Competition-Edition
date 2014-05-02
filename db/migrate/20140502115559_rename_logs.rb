class RenameLogs < ActiveRecord::Migration
  def change
    rename_table :logs, :workouts
  end
end
