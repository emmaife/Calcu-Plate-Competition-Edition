class CreateEquipmentDivisions < ActiveRecord::Migration
  def change
    create_table :equipment_divisions do |t|
      t.string :name
    end
  end
end
