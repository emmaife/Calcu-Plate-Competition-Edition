class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.float :weight
      t.references :athlete
      t.references :lift
      
    end
  end
end
