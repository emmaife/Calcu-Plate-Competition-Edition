class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :name
      t.float :bwt
      t.string :gender
      t.integer :total
      t.float :wilks
      t.references :weight_class
      t.references :competition_class
      t.references :age_division
      t.references :equipment_division
      
    end
  end
end
