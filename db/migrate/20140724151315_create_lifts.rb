class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.string :name
      
    end
  end
end
