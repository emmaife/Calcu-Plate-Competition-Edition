class CreateWoSets < ActiveRecord::Migration
  def change
    create_table :wo_sets do |t|

      t.timestamps
    end
  end
end
