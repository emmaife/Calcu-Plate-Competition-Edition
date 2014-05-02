class DropWoSets < ActiveRecord::Migration
  def change
    drop_table :wo_sets
  end
end
